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
