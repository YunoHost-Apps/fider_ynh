<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Fider untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/fider.svg)](https://ci-apps.yunohost.org/ci/apps/fider/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/fider.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/fider.maintain.svg)

[![Pasang Fider dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Fider secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Versi terkirim:** 0.22.0~ynh1

**Demo:** <https://feedback.fider.io>

## Tangkapan Layar

![Tangkapan Layar pada Fider](./doc/screenshots/screenshot.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://fider.io>
- Dokumentasi admin resmi: <https://fider.io/docs>
- Depot kode aplikasi hulu: <https://github.com/getfider/fider>
- Gudang YunoHost: <https://apps.yunohost.org/app/fider>
- Laporkan bug: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
atau
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
