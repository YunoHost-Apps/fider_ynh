<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Fider dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/fider)](https://ci-apps.yunohost.org/ci/apps/fider/)
![Status działania](https://apps.yunohost.org/badge/state/fider)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/fider)

[![Zainstaluj Fider z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Fider na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Dostarczona wersja:** 0.25.0~ynh1

**Demo:** <https://feedback.fider.io>

## Zrzuty ekranu

![Zrzut ekranu z Fider](./doc/screenshots/screenshot.png)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://fider.io>
- Oficjalna dokumentacja dla administratora: <https://fider.io/docs>
- Repozytorium z kodem źródłowym: <https://github.com/getfider/fider>
- Sklep YunoHost: <https://apps.yunohost.org/app/fider>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
lub
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
