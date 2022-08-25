<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Fider for YunoHost

[![Integration level](https://dash.yunohost.org/integration/fider.svg)](https://dash.yunohost.org/appci/app/fider) ![Working status](https://ci-apps.yunohost.org/ci/badges/fider.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/fider.maintain.svg)
[![Install Fider with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Fider quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for Github, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Shipped version:** 0.21.1~ynh1 *(:warning: This is the `initial` branch. The [`master` branch](https://github.com/YunoHost-Apps/fider_ynh/tree/master) used in the catalog is currently on version 1.0\~ynh1.)*


**Demo:** https://feedback.fider.io

## Screenshots

![Screenshot of Fider](./doc/screenshots/example.avif)

## Disclaimers / important information

* Any known limitations, constrains or stuff not working, such as (but not limited to):
    * No Yunohost LDAP connection (yet)
    * Email required for administation (uses "magic links" instead of admin passwords)

* Other infos that people should be aware of, such as:
    * any specific step to perform after installing (such as manually finishing the install, specific admin credentials, ...)
    * how to configure / administrate the application if it ain't obvious
    * upgrade process / specificities / things to be aware of ?
    * security considerations ?

## Documentation and resources

* Official app website: <https://fider.io>
* Official admin documentation: <https://fider.io/docs>
* Upstream app code repository: <https://github.com/getfider/fider>
* YunoHost documentation for this app: <https://yunohost.org/app_fider>
* Report a bug: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
or
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
