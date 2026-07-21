# 上海攻略生成工作台站点健康报告

- 状态：healthy
- 生成日期：2026-07-21
- 路线数量：6

## 检查项

- static_site：healthy
- offline_demo：healthy
- product_delivery：healthy
- acceptance_report：healthy
- pwa：healthy
- miniprogram_handoff：healthy
- platform_refresh：healthy
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

- 发布后先打开 maintenance/health-report.json 查看 status 是否为 healthy。
- 如果 route_count 不是 6，先回到 examples/requests 和 data/seed 检查路线输入。
- 如果 PWA、小程序迁移包或发布证据包缺文件，重新运行 --web-workbench 后再部署。
- 若 live_deployment 为 not_configured，说明当前是本地/预发布包，正式发布时补 published-url 参数。
