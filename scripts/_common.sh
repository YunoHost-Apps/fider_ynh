#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version=18

go_version=1.20

#=================================================
# PERSONAL HELPERS
#=================================================

build_fider() {
    ynh_exec_as "$app" mkdir -p "$install_dir/go_build"
    ynh_secure_remove -f "$install_dir/app"
    mkdir -p "$install_dir/app"

    pushd "$install_dir/sources" || ynh_die --message "Could not move into $install_dir/sources!"
        # Build server
        ynh_exec_as "$app" \
            GOPATH="$install_dir/go_build/go" \
            GOCACHE="$install_dir/go_build/.cache" \
            GOOS=linux GOARCH="$(dpkg --print-architecture)" \
            "PATH=/usr/lib/go-1.18/bin:$PATH" \
            make build-server
        cp -R migrations views locale LICENSE fider "$install_dir/app"

        # Build UI
        ynh_use_nodejs
        ynh_exec_as "$app" $ynh_node_load_PATH $ynh_npm ci
        ynh_exec_as "$app" $ynh_node_load_PATH make build-ssr
        ynh_exec_as "$app" $ynh_node_load_PATH make build-ui
        cp -R favicon.png dist robots.txt ssr.js "$install_dir/app"
    popd || ynh_die
    chown "$app:www-data" -R "$install_dir/app"
    ynh_remove_go
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
