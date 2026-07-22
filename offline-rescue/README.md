# 上海攻略生成工作台离线应急包

这个离线应急包是给长期保存和独立使用准备的。它不依赖 Codex 账号，不需要 API Key，也不需要后端服务；只要能打开本地 HTML 文件，就能查看路线、点位、地图示意、恢复指南和发布证据。

## 包内内容

- `START_HERE.md`：第一步怎么打开和恢复。
- `site/index.html`：普通游客首页。
- `site/workbench.html`：创作者工作台。
- `site/place_catalog.html`：上海点位库。
- `site/routes/*.html`：6 条路线详情页。
- `product-delivery/data-vault-recovery-guide.md`：旅行数据保险箱恢复指南。
- `release-evidence/data-vault-recovery-evidence.md/json`：恢复能力发布证据。
- `offline-rescue-checklist.md`：离线验收清单。
- `checksums.json`：关键文件 SHA256 校验。

## 使用边界

- 可离线查看静态攻略、路线页、点位库和恢复说明。
- 可在浏览器里继续使用本地复制、下载和导入功能。
- 官方开放、预约、票务、交通和临时闭馆仍需出发前人工复核。
- 小红书、抖音和旅游网站素材只保留结构化洞察，不复制第三方原文。
- 不包含 API Key、账号、Cookie、Authorization 或平台私密数据。
