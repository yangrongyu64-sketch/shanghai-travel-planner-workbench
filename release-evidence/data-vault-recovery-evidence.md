# 上海攻略数据保险箱恢复证据

## 总结论

- 状态：ready_for_restore_drill
- 路线覆盖：6 条
- 前台入口：`traveler-home-data-vault`
- 导出文件：`shanghai-traveler-data-vault.json`
- 浏览器存储键：`shanghai-traveler-home-memory-v1`
- 数据类型：`shanghai_traveler_home_data_vault`
- 恢复指南：`product-delivery/data-vault-recovery-guide.md`

## 恢复演练场景

- 同浏览器误删后恢复
- 换浏览器或换电脑恢复
- Codex 账号不可用后继续使用静态网页恢复

## 需要核验的恢复内容

- 路线偏好
- 最近路线
- 收藏路线
- 天气预检
- 平台草稿
- 游记碎片
- 素材入库记录
- 试用反馈记录
- 官方回填预览
- 公开试用内容同步

## 发布闸口

- 发布前至少完成一次导出和导入演练。
- 导入失败或错误 JSON 覆盖当前状态时，不进入正式交付。
- 备份文件不得包含 API Key、Token、Cookie、Authorization、账号密码或第三方平台私密数据。

## 边界

- 不包含 API Key、账号、Cookie、Authorization 或第三方平台私密数据；只记录静态网页中旅行数据保险箱的导出文件名、恢复入口、过滤口径和恢复演练要求。
