# 上海官方复核回填检查清单

## 回填前

- [ ] 每条记录都有 `place_id`。
- [ ] 已核验记录填写 `verified_at` 和 `official_url`。
- [ ] 开放、预约、票务、交通和临时闭馆字段已人工确认。
- [ ] 未知点位先确认是否需要新增地点，不直接写入主数据。
- [ ] 不包含 API Key、账号、Cookie 或 Authorization 信息。

## 回填后

- [ ] 运行官方校验：`.venv/bin/python -m shanghai_planner.cli --validate-official-verifications`。
- [ ] 重新生成工作台：`.venv/bin/python -m shanghai_planner.cli --web-workbench ...`。
- [ ] 检查 `maintenance/health-report.json` 为 healthy。
- [ ] 在线巡检显示全部资源 healthy。
- [ ] 手机视口无横向溢出，控制台无应用级错误。
