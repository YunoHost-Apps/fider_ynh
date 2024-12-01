<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Fider для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/fider)](https://ci-apps.yunohost.org/ci/apps/fider/)
![Состояние работы](https://apps.yunohost.org/badge/state/fider)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/fider)

[![Установите Fider с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Fider быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**Поставляемая версия:** 0.24.0~ynh1

**Демо-версия:** <https://feedback.fider.io>

## Снимки экрана

![Снимок экрана Fider](./doc/screenshots/screenshot.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://fider.io>
- Официальная документация администратора: <https://fider.io/docs>
- Репозиторий кода главной ветки приложения: <https://github.com/getfider/fider>
- Магазин YunoHost: <https://apps.yunohost.org/app/fider>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/fider_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/fider_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
или
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
