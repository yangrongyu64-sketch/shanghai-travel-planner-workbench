# 上海攻略生成工作台发布后刷新清单

## 重新生成工作台

```bash
.venv/bin/python -m shanghai_planner.cli --web-workbench \
  --request-dir examples/requests \
  --seed-dir data/seed \
  --materials-dir data/materials \
  --official-verifications data/official_verifications/place_verifications.json \
  --output-dir outputs
```

## 发布前检查

- [ ] `deployment-manifest.json` 能看到 `maintenance` 节点。
- [ ] `maintenance/health-report.json` 的 `status` 为 `healthy`。
- [ ] `route_count` 仍为 6，且包含 2/3/5/7/15 天路线。
- [ ] `workbench-demo.zip`、`offline-rescue-kit.zip`、`acceptance-report.zip`、`miniprogram-handoff.zip`、`trend-sources.zip`、`official-refresh.zip`、`official-fillback.zip`、`maintenance-report.zip`、`release-evidence.zip` 都能解压。
- [ ] `service-worker.js` 包含 `offline-rescue-kit.zip`、`offline-rescue/offline-rescue-manifest.json`、`trend-sources.zip`、`official-refresh.zip`、`official-fillback.zip`、`maintenance-report.zip`、`release-evidence.zip` 和核心 HTML/PWA 文件。
- [ ] 正式公网发布时传入 `--published-url`，并检查 `live_deployment` 为 `healthy`。

## 发布后检查

- [ ] 首页返回 200，创作者工作台 `workbench.html` 返回 200。
- [ ] `maintenance/health-report.json` 返回 200。
- [ ] `acceptance-report.zip` 返回 200。
- [ ] `trend-sources.zip` 返回 200。
- [ ] `official-refresh.zip` 返回 200。
- [ ] `official-fillback.zip` 返回 200。
- [ ] `maintenance-report.zip` 返回 200。
- [ ] `release-evidence.zip` 返回 200。
- [ ] `offline-rescue-kit.zip` 返回 200。
- [ ] `LIVE_DEPLOYMENT.md` 返回 200，且发布时间、仓库地址正确。
