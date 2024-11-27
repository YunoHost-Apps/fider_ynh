<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Fider voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/fider)](https://ci-apps.yunohost.org/ci/apps/fider/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/fider)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/fider)

[![Fider met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Fider snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Geleverde versie:** 0.22.0~ynh1

**Demo:** <https://feedback.fider.io>

## Schermafdrukken

![Schermafdrukken van Fider](./doc/screenshots/screenshot.png)

## Documentatie en bronnen

- Officiele website van de app: <https://fider.io>
- Officiele beheerdersdocumentatie: <https://fider.io/docs>
- Upstream app codedepot: <https://github.com/getfider/fider>
- YunoHost-store: <https://apps.yunohost.org/app/fider>
- Meld een bug: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
of
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
