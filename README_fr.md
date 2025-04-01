<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Fider pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/fider)](https://ci-apps.yunohost.org/ci/apps/fider/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/fider)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/fider)

[![Installer Fider avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Fider rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Version incluse :** 0.25.0~ynh1

**Démo :** <https://feedback.fider.io>

## Captures d’écran

![Capture d’écran de Fider](./doc/screenshots/screenshot.png)

## Documentations et ressources

- Site officiel de l’app : <https://fider.io>
- Documentation officielle de l’admin : <https://fider.io/docs>
- Dépôt de code officiel de l’app : <https://github.com/getfider/fider>
- YunoHost Store : <https://apps.yunohost.org/app/fider>
- Signaler un bug : <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
ou
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
