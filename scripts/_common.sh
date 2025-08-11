#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

nodejs_version="22"
go_version="1.22.0"

build_fider() {
    ynh_exec_as_app mkdir -p "$install_dir/go_build"
    ynh_safe_rm -f "$install_dir/app"
    mkdir -p "$install_dir/app"

    pushd "$install_dir/sources" || ynh_die  "Could not move into $install_dir/sources!"
        # Build server
        ynh_exec_as_app \
            GOPATH="$install_dir/go_build/go" \
            GOCACHE="$install_dir/go_build/.cache" \
            GOOS=linux GOARCH="$(dpkg --print-architecture)" \
            "PATH=/usr/lib/go-1.18/bin:$PATH" \
            make build-server
        cp -R migrations views locale LICENSE fider "$install_dir/app"

        # Build UI

        ynh_exec_as_app npm ci
        ynh_exec_as_app make build-ssr
        ynh_exec_as_app make build-ui
        cp -R favicon.png dist robots.txt ssr.js "$install_dir/app"
    popd || ynh_die
    chown "$app:www-data" -R "$install_dir/app"
    ynh_go_remove
}
