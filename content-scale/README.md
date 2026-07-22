# 上海攻略生成工作台内容扩容包

这个包用于把上海攻略从当前可用版本继续扩成可长期运营的内容库。原则是先扩内容，再改代码：先用结构化模板补足点位、美食、住宿、路线和平台角度，再通过现有生成链路导入、测试和发布。

## 文件

- `place-expansion-template.json`：景点、博物馆、公园、街区、滨江、冷门补充点位扩充模板。
- `food-expansion-template.json`：美食和休息补给区扩充模板。
- `stay-expansion-template.json`：住宿区域对比扩充模板。
- `route-expansion-template.json`：2/3/5/7/15 天及主题玩法路线扩充模板。
- `content-growth-roadmap.md`：内容增长路线图和分批节奏。
- `import-checklist.md`：导入、复核、测试和发布验收清单。
- `content-scale-manifest.json`：机器可读的包清单。

## 边界

- 不复制第三方平台原文，不保存账号、Cookie、Authorization 或 API Key。
- 小红书、抖音和旅游平台只作为话题、结构、场景和体验信号来源。
- 官方开放、预约、票务、交通和临时闭馆必须人工复核。
