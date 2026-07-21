# TikHub 可选接入指南

## 是否必须

不必须。当前上海攻略网页、路线图、离线包和发布包不依赖 TikHub。TikHub 适合作为后续热点自动刷新源。

## 推荐接入方式

1. 在本机环境变量配置 `TIKHUB_API_KEY`，不要写入 Git、JSON 模板、Markdown 或网页。
2. 用独立脚本请求 TikHub 的公开平台数据接口，只保存结构化字段。
3. 把返回结果映射为 `trend-source-template.json` 的 `trends` 数组。
4. 人工复核后，再把有效信号转入 `platform-refresh.zip` 对应的素材刷新流程。

## 字段映射建议

- 平台：`platform`。
- 搜索词或话题：`keyword` / `topic`。
- 热度线索：`heat_signal`，例如播放、点赞、收藏、评论增速的区间描述。
- 关联点位：`linked_place_ids`，必须映射到当前路线点位 ID。
- 评论问题：写入 `route_hints` 或 `official_fields_to_verify`。

## 安全边界

- 不写入 Git：API Key、Cookie、Authorization、账号信息都不得进入仓库。
- 不抓取登录态或私域内容。
- 不复制平台原文；只保留趋势标签、问题类型、结构化判断和复核字段。
