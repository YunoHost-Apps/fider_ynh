<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Fider YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/fider.svg)](https://ci-apps.yunohost.org/ci/apps/fider/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/fider.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/fider.maintain.svg)

[![Instalatu Fider YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Fider YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Paketatutako bertsioa:** 0.22.0~ynh1

**Demoa:** <https://feedback.fider.io>

## Pantaila-argazkiak

![Fider(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://fider.io>
- Administratzaileen dokumentazio ofiziala: <https://fider.io/docs>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/getfider/fider>
- YunoHost Denda: <https://apps.yunohost.org/app/fider>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
edo
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
