#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version=16

# dependencies used by the app (must be on a single line)
pkg_dependencies="golang-1.18-go postgresql"

#=================================================
# PERSONAL HELPERS
#=================================================

build_fider() {
    ynh_exec_as "$app" mkdir -p "$final_path/go_build"
    ynh_secure_remove -f "$final_path/app"
    mkdir -p "$final_path/app"

    pushd "$final_path/sources"
        # Build server
        ynh_exec_as "$app" \
            GOPATH="$final_path/go_build/go" \
            GOCACHE="$final_path/go_build/.cache" \
            GOOS=linux GOARCH="$(dpkg --print-architecture)" \
            PATH=/usr/lib/go-1.18/bin:$PATH \
            make build-server
        cp -R migrations views locale LICENSE fider "$final_path/app"

        # Build UI
        ynh_use_nodejs
        ynh_exec_as "$app" $ynh_node_load_PATH $ynh_npm ci
        ynh_exec_as "$app" $ynh_node_load_PATH make build-ssr
        ynh_exec_as "$app" $ynh_node_load_PATH make build-ui
        cp -R favicon.png dist robots.txt ssr.js "$final_path/app"
    popd
    chown $app:www-data -R "$final_path/app"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

_ynh_enable_backports() {
    version=$(ynh_get_debian_release)
    backports_file="/etc/apt/sources.list.d/backports_$version.list"
    if [[ -f "$backports_file" ]]; then
        return 0
    fi
    {
        echo "deb http://deb.debian.org/debian $version-backports main contrib non-free"
        echo "deb-src http://deb.debian.org/debian $version-backports main contrib non-free"
    } > "$backports_file"
    apt update
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

# Send an email to inform the administrator
#
# usage: ynh_send_readme_to_admin app_message [recipients]
# | arg: app_message - The message to send to the administrator.
# | arg: recipients - The recipients of this email. Use spaces to separate multiples recipients. - default: root
#	example: "root admin@domain"
#	If you give the name of a YunoHost user, ynh_send_readme_to_admin will find its email adress for you
#	example: "root admin@domain user1 user2"
ynh_send_readme_to_admin() {
	local app_message="${1:-...No specific information...}"
	local recipients="${2:-root}"

	# Retrieve the email of users
	find_mails () {
		local list_mails="$1"
		local mail
		local recipients=" "
		# Read each mail in argument
		for mail in $list_mails
		do
			# Keep root or a real email address as it is
			if [ "$mail" = "root" ] || echo "$mail" | grep --quiet "@"
			then
				recipients="$recipients $mail"
			else
				# But replace an user name without a domain after by its email
				if mail=$(ynh_user_get_info "$mail" "mail" 2> /dev/null)
				then
					recipients="$recipients $mail"
				fi
			fi
		done
		echo "$recipients"
	}
	recipients=$(find_mails "$recipients")

	local mail_subject="☁️🆈🅽🅷☁️: \`$app\` was just installed!"

	local mail_message="This is an automated message from your beloved YunoHost server.
Specific information for the application $app.
$app_message"

	# Define binary to use for mail command
	if [ -e /usr/bin/bsd-mailx ]
	then
		local mail_bin=/usr/bin/bsd-mailx
	else
		local mail_bin=/usr/bin/mail.mailutils
	fi

	# Send the email to the recipients
	echo "$mail_message" | $mail_bin -a "Content-Type: text/plain; charset=UTF-8" -s "$mail_subject" "$recipients"
}
