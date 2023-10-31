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
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Shipped version:** 0.21.1~ynh5

**Demo:** https://feedback.fider.io

## Screenshots

![Screenshot of Fider](./doc/screenshots/screenshot.png)

## Documentation and resources

* Official app website: <https://fider.io>
* Official admin documentation: <https://fider.io/docs>
* Upstream app code repository: <https://github.com/getfider/fider>
* YunoHost Store: <https://apps.yunohost.org/app/fider>
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
