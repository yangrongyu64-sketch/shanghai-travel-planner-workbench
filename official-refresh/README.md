# 上海攻略生成工作台官方复核更新包

这个包用于人工更新 `data/official_verifications/place_verifications.json`，重点复核开放时间、预约、票务、交通和临时闭馆等高风险事实。

## 文件

- `official-review-template.json`：可回填的官方复核 JSON 模板。
- `official-review-tasks.md`：按路线和点位整理的人工核验任务。
- `official-review-tasks.csv`：适合导入表格的核验任务。
- `official-validation-summary.json`：当前官方复核数据的校验摘要。
- `official-refresh-manifest.json`：包内文件、源资产和维护边界。

## 使用方式

1. 打开 `official-review-tasks.md` 或 CSV，按优先级逐个点位查官方来源。
2. 在 `official-review-template.json` 中回填 `status`、`verified_at`、`official_url`、`opening_status`、`reservation_status`、`ticket_status`、`transport_status` 和 `publish_note`。
3. 回到网页首页的“官方复核回填包”，粘贴 JSON 预览合并，不直接覆盖正式数据。
4. 人工确认差异后，再替换 `data/official_verifications/place_verifications.json` 并重新构建站点。

## 边界

- 本包不自动抓取官方网页，不绕过登录、验证码或反爬限制。
- 未人工确认前，不把开放、预约、票务、交通和临时闭馆写成实时事实。
- 不保存 API Key、账号、Cookie 或 Authorization 信息。
