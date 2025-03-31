<!--
N.B.: Diese README wurde automatisch von <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> generiert.
Sie darf NICHT von Hand bearbeitet werden.
-->

# Fider für YunoHost

[![Integrations-Level](https://apps.yunohost.org/badge/integration/fider)](https://ci-apps.yunohost.org/ci/apps/fider/)
![Funktionsstatus](https://apps.yunohost.org/badge/state/fider)
![Wartungsstatus](https://apps.yunohost.org/badge/maintained/fider)

[![Fider mit YunoHost installieren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Dieses README in anderen Sprachen lesen.](./ALL_README.md)*

> *Mit diesem Paket können Sie Fider schnell und einfach auf einem YunoHost-Server installieren.*  
> *Wenn Sie YunoHost nicht haben, lesen Sie bitte [die Anleitung](https://yunohost.org/install), um zu erfahren, wie Sie es installieren.*

## Übersicht

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Ausgelieferte Version:** 0.25.0~ynh1

**Demo:** <https://feedback.fider.io>

## Bildschirmfotos

![Bildschirmfotos von Fider](./doc/screenshots/screenshot.png)

## Dokumentation und Ressourcen

- Offizielle Website der App: <https://fider.io>
- Offizielle Verwaltungsdokumentation: <https://fider.io/docs>
- Upstream App Repository: <https://github.com/getfider/fider>
- YunoHost-Shop: <https://apps.yunohost.org/app/fider>
- Einen Fehler melden: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Entwicklerinformationen

Bitte senden Sie Ihren Pull-Request an den [`testing` branch](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

Um den `testing` Branch auszuprobieren, gehen Sie bitte wie folgt vor:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
oder
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Weitere Informationen zur App-Paketierung:** <https://yunohost.org/packaging_apps>
