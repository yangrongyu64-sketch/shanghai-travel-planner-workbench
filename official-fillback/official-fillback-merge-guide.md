# 上海官方复核回填合并说明

## 合并原则

- 只生成预览，不自动覆盖真实数据。
- 以 `place_id` 为唯一匹配键。
- 字段不完整、未知点位和未人工确认的记录先跳过。
- 实时信息以官方渠道和现场信息为准。

## 推荐流程

1. 打开首页“官方复核回填包”。
2. 导入 `shanghai-official-fillback-template.json` 或人工复核后的同结构 JSON。
3. 查看合并预览，确认可匹配、未知点位和字段缺失。
4. 下载差异摘要 `shanghai-official-fillback-merge-diff.md`。
5. 下载 `place_verifications.merged.json`。
6. 人工确认后，再替换 `data/official_verifications/place_verifications.json`。
7. 重新构建站点、运行官方校验和线上巡检。

## 回滚

- 若新数据有问题，用 `place-verifications-baseline.json` 恢复上一版官方复核基线。
- 若已经部署，先回退部署仓库上一提交，再重新发布确认过的数据。
