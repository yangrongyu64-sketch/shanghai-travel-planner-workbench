# 上海攻略生成工作台趋势源接入包

这个包用于把 TikHub、手动 JSON、旅游网站热点快照和创作者观察统一成可复核的趋势信号。

## 定位

- 可选增强：没有任何 API Key 时，仍可用 `trend-source-template.json` 手动导入。
- TikHub 只作为上游数据源候选，不是网页打开、路线生成、地图展示或离线包使用的前置条件。
- 趋势源只进入选题、标题角度、路线提示和待复核清单，不直接当作官方事实。

## 文件

- `trend-source-template.json`：统一趋势源导入模板。
- `trend-snapshot-sample.json`：按当前 6 条路线生成的示例趋势快照。
- `tikhub-adapter-guide.md`：TikHub 可选接入方式和安全边界。
- `manual-import-guide.md`：没有 API 时的手动 JSON 导入流程。
- `trend-review-checklist.md`：趋势源复核和发布前检查清单。
- `trend-sources-manifest.json`：包内文件、源资产和 API 边界。
