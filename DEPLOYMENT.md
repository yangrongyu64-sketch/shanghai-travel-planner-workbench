# 上海攻略生成工作台部署说明

这个包是纯静态站点，不需要后端服务。上传 `site/` 目录里的所有文件即可。

## 推荐部署方式

### 一键脚本：GitHub Pages

1. 确认本机已登录 GitHub CLI：`gh auth status`。
2. 进入 `site/` 目录。
3. 执行：`CONFIRM_PUBLIC_PAGES=yes ./deploy-github-pages.sh shanghai-travel-planner-workbench public`。
4. 脚本会创建或更新 GitHub 仓库，开启 Pages，并输出公网访问地址。

### GitHub Pages

1. 新建仓库或使用现有仓库。
2. 把 `site/` 目录内的文件上传到发布分支或 `docs/` 目录。
3. 在 Pages 设置里选择对应分支和目录。
4. 发布后访问站点根路径，默认进入演示版 `index.html`。

### Vercel

1. 新建 Project，选择静态站点。
2. 将 `site/` 作为项目根目录上传或连接仓库。
3. Framework 选择 Other，Build Command 留空，Output Directory 留空或设为 `.`。
4. 部署后访问根路径，确认演示版自动填充发布工作台。

### Netlify

1. 使用 Deploy manually 或连接仓库。
2. 上传 `site/` 目录，或将发布目录设为 `site`。
3. Build Command 留空，Publish Directory 设为 `site` 或 `.`。
4. 部署后访问根路径，确认能打开 `workbench.html` 普通入口。

## 发布后验收

- 访问根路径，页面标题应为“上海攻略生成工作台”。
- 根路径应自动进入演示状态，并能看到“可发布路线打包”。
- 点击“返回普通工作台”应进入 `workbench.html`。
- 在 `workbench.html` 点击“打开演示链接”应返回 `index.html`。
- 下载 `workbench-demo.zip` 应得到离线演示包。
- 浏览器开发者工具里应能看到 PWA manifest，并成功注册 `service-worker.js`。
