# 旅行数据保险箱恢复指南

这份指南用于把游客首页里的收藏、路线偏好、天气预检、平台草稿、游记碎片、素材入库和反馈记录迁移到另一台电脑或另一个浏览器。它不依赖 Codex 账号，只依赖已经部署好的静态网页和你自己保存的 JSON 备份。

## 关键文件和入口

- 前台入口：游客首页 `#traveler-home-data-vault`。
- 导出文件：`shanghai-traveler-data-vault.json`。
- 浏览器存储键：`shanghai-traveler-home-memory-v1`。
- 数据类型：`shanghai_traveler_home_data_vault`。
- 发布留档：`release-evidence/data-vault-recovery-evidence.json`。

## 备份步骤

1. 打开线上首页或本地 `index.html`。
2. 滚动到“旅行数据保险箱”。
3. 点击“下载备份JSON”，保存 `shanghai-traveler-data-vault.json`。
4. 也可以点击“复制备份”，把 JSON 粘贴到自己的文档或云盘。
5. 不要把包含个人笔记的备份直接公开发布。

## 恢复步骤

1. 在新浏览器、新电脑或重新部署后的静态网页里打开首页。
2. 进入“旅行数据保险箱”。
3. 粘贴 `shanghai-traveler-data-vault.json` 内容，或选择这个 JSON 文件。
4. 点击“导入备份”。
5. 页面应恢复上次路线、偏好、收藏、草稿、游记碎片、天气预检和反馈记录。

## 验收口径

- 导入后路线选择器应回到备份里的天数、强度、主题和避开偏好。
- 最近路线和收藏路线应恢复。
- 本地平台草稿和游记碎片应恢复，并仍标记为本地内容。
- 错误的 JSON 或不匹配的数据类型不得覆盖当前浏览器状态。
- 备份和恢复不需要 API Key，也不需要 Codex 账号在线。

## 敏感信息边界

- 数据保险箱会过滤 `apiKey`、`api_key`、`token`、`authorization`、`cookie`、`secret`、`password`、`amap`、`gaode` 等敏感键。
- 备份不应包含高德、天气、平台账号、Cookie 或 Authorization 信息。
- 如果手动编辑过 JSON，导入前先搜索 `key`、`token`、`cookie`、`secret`、`password` 等关键词。

## 什么时候用

- 同浏览器误删 localStorage 后恢复。
- 换浏览器或换电脑继续使用。
- Codex 账号不可用后，仍然用静态网页继续维护自己的旅行工作台状态。
