# 上海攻略生成工作台静态部署包

这个目录可以直接上传到 GitHub Pages、Vercel、Netlify 或任意静态网站托管服务。

## 入口文件

- `index.html`：游客首页，适合普通旅行者直接选路线、看攻略和打开路线图。
- `workbench.html`：创作者工作台入口，适合真实填写、本机状态管理、平台文案和交付发布。
- `place_catalog.html`：上海点位库，按地标、博物馆、美术馆、公园、滨江、街区和深度补充分组。
- `workbench-demo.zip`：可下载转发的离线演示包。
- `miniprogram-handoff.zip`：小程序迁移包，给后续微信小程序或移动端壳开发使用。
- `platform-refresh.zip`：平台素材刷新包，给小红书、抖音、旅游网站素材导入和人工复核使用。
- `maintenance-report.zip`：站点健康和发布刷新包，用于检查关键文件、路线数和部署状态。
- `manifest.webmanifest`：PWA 安装清单，支持浏览器添加到主屏幕。
- `service-worker.js`：缓存核心入口文件，提升二次打开和离线兜底体验。
- `app-icon.svg`：PWA 图标。
- `DEPLOYMENT.md`：部署步骤和发布后验收清单。
- `deployment-manifest.json`：部署入口、文件和验收项的结构化清单。
- `deploy-github-pages.sh`：GitHub Pages 自动发布脚本。
- `.nojekyll`：用于 GitHub Pages，避免下划线等静态文件被特殊处理。

## 静态部署

1. 把整个 `site/` 目录作为静态站点根目录上传。
2. 部署完成后访问站点根路径，会默认打开游客首页 `index.html`。
3. 需要创作者工作台时，打开同域名下的 `workbench.html`。
4. 需要先看内容资产时，打开同域名下的 `place_catalog.html`。
5. 在支持 PWA 的浏览器里，可用“添加到主屏幕”把工作台作为应用入口保存。
