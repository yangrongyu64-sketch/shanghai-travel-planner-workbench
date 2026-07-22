# 上海攻略生成工作台发布证据包

这个包用于把一次线上发布的证据集中留档，适合交给协作者、未来维护者，或在 Codex 账号不可用时继续核验当前网页版本。

## 文件

- `release-audit-summary.md`：发布审计摘要，串联发布记录、测试结果、线上巡检和回滚锚点。
- `online-health-check-summary.json`：线上巡检应检查的资源、报告文件和通过口径。
- `content-update-execution-evidence.md` / `content-update-execution-evidence.json`：内容更新执行确认包的发布留档入口和人工导入口径。
- `release-regression-checklist.md`：发布后回归证据清单。
- `release-evidence-manifest.json`：本包清单、源资产和边界说明。

## 使用方式

1. 打开公网首页，先运行“线上巡检”。
2. 下载 `shanghai-online-health-check.json` 和 `shanghai-online-health-check.md`。
3. 在“发布审计”里同步巡检 JSON，生成并下载 `shanghai-release-audit-package.md`。
4. 若本次包含内容更新，先在首页生成 `shanghai-content-update-execution-package.md/json`，再与本包一并留档。
5. 将本包、审计 Markdown、线上巡检 JSON/Markdown 和 Playwright 验收截图一起留档。

## 边界

- 本包不保存 API Key、账号、Cookie 或 Authorization 信息。
- 小红书、抖音和旅游网站素材只保留结构化洞察，不复制第三方原文。
- 开放、预约、票务、交通和临时闭馆仍以官方渠道和现场信息为准。
