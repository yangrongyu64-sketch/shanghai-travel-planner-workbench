# 上海攻略生成工作台官方复核回填闭环包

这个包用于把人工复核后的官方信息安全回填到 `data/official_verifications/place_verifications.json`。

## 文件

- `shanghai-official-fillback-template.json`：可导入首页“官方复核回填包”的回填 JSON 模板。
- `place-verifications-baseline.json`：当前官方复核基线，便于对比和回滚。
- `official-fillback-merge-guide.md`：导入、预览、合并和回滚说明。
- `official-fillback-checklist.md`：回填前后检查清单。
- `official-fillback-manifest.json`：包内文件、源资产和维护边界。

## 使用方式

1. 先用 `official-refresh.zip` 完成人工官方复核。
2. 把结果填入 `shanghai-official-fillback-template.json`。
3. 打开网页首页的“官方复核回填包”，粘贴或选择 JSON，先预览合并差异。
4. 下载 `place_verifications.merged.json`，人工确认后再替换正式数据并重新构建。

## 边界

- 本包只生成合并预览和回填候选，不自动覆盖真实数据。
- 不抓取官网、不绕过登录、验证码或反爬限制。
- 不保存 API Key、账号、Cookie 或 Authorization 信息。
