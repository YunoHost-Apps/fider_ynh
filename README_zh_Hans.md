<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Fider

[![集成程度](https://apps.yunohost.org/badge/integration/fider)](https://ci-apps.yunohost.org/ci/apps/fider/)
![工作状态](https://apps.yunohost.org/badge/state/fider)
![维护状态](https://apps.yunohost.org/badge/maintained/fider)

[![使用 YunoHost 安装 Fider](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=fider)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Fider。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Fider is a feedback portal that helps teams collect and prioritize customer feedback in one place, based on votes and ideas submitted.

### Features

- Share ideas, vote and discuss
- Authentication with support for GitHub, Facebook, Google, and custom OAuth providers
- Customizable branding
- Public API, webhooks etc
- Markdown support


**分发版本：** 0.23.0~ynh1

**演示：** <https://feedback.fider.io>

## 截图

![Fider 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方应用网站： <https://fider.io>
- 官方管理文档： <https://fider.io/docs>
- 上游应用代码库： <https://github.com/getfider/fider>
- YunoHost 商店： <https://apps.yunohost.org/app/fider>
- 报告 bug： <https://github.com/YunoHost-Apps/fider_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/fider_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
或
sudo yunohost app upgrade fider -u https://github.com/YunoHost-Apps/fider_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
