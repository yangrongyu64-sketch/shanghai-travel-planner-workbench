# 上海攻略生成工作台站点健康报告

- 总体状态：needs_attention
- 技术状态：healthy
- 官方信息状态：needs_official_review
- 官方信息计数（路线点位引用，同一景点可能重复）：已核验 0｜待复核 9｜未回填 88
- 生成日期：2026-08-19
- 路线数量：6

## 检查项

- static_site：healthy
- offline_demo：healthy
- offline_rescue：healthy
- content_scale：healthy
- product_delivery：healthy
- acceptance_report：healthy
- pwa：healthy
- miniprogram_handoff：healthy
- trend_sources：healthy
- platform_refresh：healthy
- official_refresh：healthy
- official_fillback：healthy
- release_evidence：healthy
- live_deployment：healthy

## 路线快照

- relaxed_2d1n_citywalk：2天｜路线分 89｜地图 2 天
- first_time_3d2n_balanced：3天｜路线分 89｜地图 3 天
- highwalk_3d2n_landmark_citywalk：3天｜路线分 89｜地图 3 天
- deep_5d4n_culture_citywalk：5天｜路线分 91｜地图 5 天
- local_life_7d6n_balanced：7天｜路线分 92｜地图 7 天
- longstay_15d14n_balanced：15天｜路线分 92｜地图 15 天

## 下一步动作

- 发布后先打开 maintenance/health-report.json：technical_status 为 healthy 表示站点文件可用，不代表官方信息已经核验。
- official_data_status 为 needs_official_review 时，出行或发布前必须继续核验营业时间、预约、票价和临时闭馆等官方信息。
- 官方信息尚未核验时，顶层 status 为 needs_attention 是符合预期的安全状态。
- 如果 route_count 不是 6，先回到 examples/requests 和 data/seed 检查路线输入。
- 如果 PWA、离线应急包、内容扩容包、小程序迁移包、趋势源包、官方复核包、官方回填包或发布证据包缺文件，重新运行 --web-workbench 后再部署。
- 若 live_deployment 为 not_configured，说明当前是本地/预发布包，正式发布时补 published-url 参数。
