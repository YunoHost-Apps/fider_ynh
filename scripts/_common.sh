#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version=16

pkg_dependency_golang="golang-1.18-go"

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
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

install_golang_from_backports() {
    ynh_exec_warn_less ynh_install_extra_app_dependencies \
        --repo="deb http://deb.debian.org/debian $(ynh_get_debian_release)-backports main contrib non-free" \
        --package="$pkg_dependency_golang"
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
