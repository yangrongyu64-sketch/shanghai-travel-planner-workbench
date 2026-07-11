# 上海攻略生成工作台小程序迁移包

这个包不是完整微信小程序源码，而是把当前已经跑通的网页/PWA 产品整理成小程序开发可接手的结构化资料。

## 使用方式

1. 先跑通：用 `pages-map.json` 搭出首页、路线列表、路线详情、地图路线页和发布工作区。
2. 再丰富：用 `routes.json` 填充真实路线、内容资产、地图天数和来源质量字段。
3. 最后接入：按 `acceptance-checklist.md` 做事实复核、地图复核、平台文案合规和发布验收。

## 文件

- `product-brief.md`：小程序产品定位、首版范围和暂缓事项。
- `pages-map.json`：建议页面、导航和字段映射。
- `routes.json`：从当前工作台导出的路线数据种子。
- `acceptance-checklist.md`：迁移验收清单。
- `handoff-manifest.json`：包内文件和源资产索引。
