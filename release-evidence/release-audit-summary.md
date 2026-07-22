# 上海攻略发布审计摘要

- 发布时间：2026-07-22
- 公开首页：https://yangrongyu64-sketch.github.io/shanghai-travel-planner-workbench/
- 创作者工作台：https://yangrongyu64-sketch.github.io/shanghai-travel-planner-workbench/workbench.html
- 路线覆盖：6 条
- 当前完成度：99.8%
- API 要求：核心网页、路线图、复制下载和离线包不需要 API Key。
- 人工复核：官方开放、预约、票务、交通和临时闭馆仍需复核。

## 应留档证据

- `release-evidence.zip`：本发布证据包。
- `shanghai-release-audit-package.md`：首页“发布审计”生成的最终审计 Markdown。
- `shanghai-online-health-check.json` / `shanghai-online-health-check.md`：线上巡检 JSON 和 Markdown。
- `shanghai-content-update-execution-package.md/json`：首页“内容更新执行确认包”生成的采纳、复核、阻塞和回归记录。
- `shanghai-traveler-data-vault.json`：首页“旅行数据保险箱”导出的个人行程状态备份，用于换浏览器或换电脑恢复演练。
- `shanghai-release-regression-checklist.md`：发布后回归清单。
- `output/playwright/`：线上下载、移动端和控制台核验证据。

## 线上巡检口径

- 首页、完整工作台、点位库、PWA manifest、service worker 和部署清单均可访问。
- 6 条路线详情页均可访问。
- `workbench-demo.zip`、`product-delivery.zip`、`acceptance-report.zip`、`miniprogram-handoff.zip`、`trend-sources.zip`、`platform-refresh.zip`、`official-refresh.zip`、`maintenance-report.zip`、`release-evidence.zip`、`offline-rescue-kit.zip` 均可下载。
- `maintenance/health-report.json`、`release-evidence/online-health-check-summary.json` 和 `release-evidence/release-evidence-manifest.json` 可作为机器核验入口。

## 回滚锚点

- 部署仓库提交、GitHub Pages run、`outputs/workbench/site`、`workbench-site.zip` 和本证据包。
- 若线上出现阻塞问题，先回退部署仓库上一提交，再用本包定位缺失资源或审计漏项。
