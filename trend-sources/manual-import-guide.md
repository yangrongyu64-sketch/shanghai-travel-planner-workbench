# 手动趋势源导入指南

## 适用场景

- 暂时没有 TikHub Key。
- 只想先把小红书、抖音、旅游网站的热点观察人工整理成 JSON。
- 需要把创作者自己的实地观察转成选题和路线调整信号。

## 操作流程

1. 打开 `trend-source-template.json`。
2. 找到对应路线，在 `trends` 数组里新增趋势记录。
3. `source` 建议填 `manual_json`，平台填 `xiaohongshu`、`douyin`、`travel_website` 或 `creator_observation`。
4. 把需要官方确认的开放、预约、票务、交通、临时闭馆写入 `official_fields_to_verify`。
5. 复核后，把可用信号转入 `platform-refresh.zip` 的素材导入流程。

## 示例

`trend-snapshot-sample.json` 是当前 6 条路线的示例快照，可直接复制其中一条改写。

## 注意

- manual_json 不是官方事实来源。
- 不要粘贴第三方平台长文案。
- 发布前仍需人工审稿和官方复核。
