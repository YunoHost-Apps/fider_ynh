<!--
N.B.: Aquest README ha estat generat automàticament per <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NO s'ha de modificar manualment.
-->

# Fider per YunoHost

[![Nivell d'integració](https://apps.yunohost.org/badge/integration/fider)](https://ci-apps.yunohost.org/ci/apps/fider/)
![Estat de funcionament](https://apps.yunohost.org/badge/state/fider)
![Estat de manteniment](https://apps.yunohost.org/badge/maintained/fider)

[![Instal·la Fider amb YunoHosth](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Llegeix aquest README en altres idiomes.](./ALL_README.md)*

> *Aquest paquet et permet instal·lar Fider de forma ràpida i senzilla en un servidor YunoHost.*  
> *Si no tens YunoHost, consulta [la guia](https://yunohost.org/install) per saber com instal·lar-lo.*

## Visió general

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Versió inclosa:** 0.25.0~ynh1

**Demo:** <https://feedback.fider.io>

## Captures de pantalla

![Captures de pantalla de Fider](./doc/screenshots/screenshot.png)

## Documentació i recursos

- Lloc web oficial de l'aplicació: <https://fider.io>
- Documentació oficial per l'administrador: <https://fider.io/docs>
- Repositori oficial del codi de l'aplicació: <https://github.com/getfider/fider>
- Botiga YunoHost: <https://apps.yunohost.org/app/fider>
- Reportar un error: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Informació per a desenvolupadors

Envieu les pull request a la [branca `testing`](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

Per provar la branca `testing`, procedir com descrit a continuació:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
o
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Més informació sobre l'empaquetatge d'aplicacions:** <https://yunohost.org/packaging_apps>
