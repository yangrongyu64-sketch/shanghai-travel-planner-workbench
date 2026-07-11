# 上海攻略生成工作台静态部署包

这个目录可以直接上传到 GitHub Pages、Vercel、Netlify 或任意静态网站托管服务。

## 入口文件

- `index.html`：默认首页，已自动填充演示状态，适合给别人快速看发布工作台。
- `workbench.html`：普通工作台入口，不预填演示状态，适合真实填写和本机状态管理。
- `workbench-demo.zip`：可下载转发的离线演示包。
- `DEPLOYMENT.md`：部署步骤和发布后验收清单。
- `deployment-manifest.json`：部署入口、文件和验收项的结构化清单。
- `deploy-github-pages.sh`：GitHub Pages 自动发布脚本。
- `.nojekyll`：用于 GitHub Pages，避免下划线等静态文件被特殊处理。

## 静态部署

1. 把整个 `site/` 目录作为静态站点根目录上传。
2. 部署完成后访问站点根路径，会默认打开演示版 `index.html`。
3. 需要空状态工作台时，打开同域名下的 `workbench.html`。
