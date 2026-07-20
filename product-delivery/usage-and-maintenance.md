# 使用和维护说明

## 打开入口

- 线上首页：GitHub Pages 根路径。
- 本地首页：`outputs/workbench/site/index.html`。
- 完整工作台：`outputs/workbench/site/workbench.html`。
- 正式交付包：`outputs/workbench/site/product-delivery.zip`。
- 离线演示包：`outputs/workbench/workbench-demo.zip` 或站点内 `workbench-demo.zip`。

## 每次更新流程

1. 更新数据后重新构建。
2. 跑测试。
3. 重新生成 `outputs/workbench/site`。
4. 同步到部署仓库并提交。
5. 等 GitHub Pages 构建完成。
6. 线上验收：首页、路线详情、地图、下载包、手机视口和控制台。

## 推荐命令

```bash
.venv/bin/python -m pytest -q

.venv/bin/python -m shanghai_planner.cli --web-workbench \
  --request-dir examples/requests \
  --seed-dir data/seed \
  --materials-dir data/materials \
  --official-verifications data/official_verifications/place_verifications.json \
  --material-repairs data/material_repairs/material_repairs.json \
  --output-dir outputs
```

## API 和账号边界

- 不需要 API Key 也能使用核心功能。
- 高德地图、天气等 API 只作为后续增强，不是打开网页的前置条件。
- 不提交 API Key、账号、Cookie 或 Authorization 信息。
- 不依赖 Codex 账号运行，Codex 只参与生成和维护代码；静态网页、ZIP 和 Markdown 都可独立保存。
