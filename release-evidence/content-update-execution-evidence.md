# 上海攻略内容更新执行确认包发布证据

## 总结论

- 状态：ready_for_manual_execution_import
- 路线覆盖：6 条
- 前台入口：`traveler-home-content-update-execution-package`
- 当前包性质：static_release_template，不替代浏览器内生成的真实执行确认包。
- 发布判断：待导入执行确认包

## 需要一并留档的文件

- `shanghai-content-update-package.md`
- `shanghai-content-update-package.json`
- `shanghai-content-update-execution-package.md`
- `shanghai-content-update-execution-package.json`

## 执行状态口径

- `accepted`：已采纳，需要证据截图、测试结果、负责人和回退说明。
- `needs_official_review`：需官方复核，开放、预约、票务、交通和临时闭馆以官方渠道为准。
- `blocked_by_p1`：P1 阻塞，未回填修复和回归前不得发布。
- `deferred`：延期，不进入本次正式发布内容。

## 发布闸口

- 若存在 `blocked_by_p1`，发布闸口必须阻塞。
- 若存在 `needs_official_review`，发布前必须人工复核并保留证据。
- 生成执行确认包后，需要重新生成发布回归清单和发布审计包。

## 边界

- 本证据文件是静态发布归档模板，不读取浏览器 localStorage，也不保存用户临时生成内容。
- 不包含 API Key、账号、Cookie、Authorization 或第三方平台私密数据。
- 平台素材只保留结构、话题和体验信号，正式发布前需要人工改写。
