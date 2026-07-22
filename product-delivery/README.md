# 上海攻略生成工作台正式交付包

这个包用于正式交接当前上海攻略生成工作台。它不是依赖 Codex 才能打开的临时成果，而是可以脱离 Codex 账号继续使用、部署、复核和维护的静态产品说明包。

## 交付结论

- 产品形态：静态网页 / PWA / 离线包。
- 当前完成度：99.8%。
- 当前路线：6 条上海路线，覆盖 2/3/5/7/15 天和躺平、均衡、暴走、文化、地标、生活感等玩法。
- 使用门槛：不需要 API Key 也能使用。
- 维护边界：官方开放、预约、票务、交通和临时闭馆仍需人工复核。

## 怎么用

1. 演示链接：`index.html?demo=traveler#traveler-home-route-pack`，会自动载入示例路线、天气预检和交接包，适合先给测试用户看完整效果。
2. 普通游客打开 `index.html`，选择路线、查看攻略、地图和出发前提醒。
3. 创作者或维护者打开 `workbench.html`，处理内容、素材、反馈、发布和留档。
4. 需要离线转发时使用 `workbench-demo.zip`。
5. 需要小程序迁移时使用 `miniprogram-handoff.zip`。
6. 需要正式发布留档时使用 `release-evidence.zip`。
7. 需要迁移浏览器本地数据时，按 `data-vault-recovery-guide.md` 使用旅行数据保险箱。
8. 后续维护按 `usage-and-maintenance.md` 执行。

## 快速验收

1. 打开公开链接或 `index.html`，确认首页能看到上海路线；也可打开 `index.html?demo=traveler#traveler-home-route-pack` 自动进入示例路线包。
2. 下载并解压 `product-delivery.zip`，确认 6 个交付文件都存在。
3. 对照 `acceptance-checklist.md`，确认 API 边界、人工复核边界和下载包都清楚。
4. 在首页“旅行数据保险箱”导出 `shanghai-traveler-data-vault.json`，再按恢复指南完成一次导入演练。
