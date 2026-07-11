# 平台素材采集与导入流程

## 1. 收集素材

把小红书笔记、抖音口播文案、旅游网站攻略里的可参考信息贴入本地文本文件。只保留用于分析的工作副本，不把原文直接发布。

## 2. 转成结构化素材

```bash
python -m shanghai_planner.cli --capture-material \
  --capture-file examples/material_captures/relaxed_2d1n_citywalk_xhs.txt \
  --capture-platform xiaohongshu \
  --capture-route-id relaxed_2d1n_citywalk \
  --capture-source-url paste:xhs-relaxed-demo \
  --captured-at 2026-07-11 \
  --seed-dir data/seed \
  --output-dir outputs
```

生成结果会进入 `outputs/captured_materials/`，其中不应包含第三方原文正文。

## 3. 人工复核

- 删除任何可识别的完整原文段落。
- 补来源 URL、采集日期、提到地点、内容角度、避坑信号。
- 把开放、票务、预约、交通等事实字段列入官方复核。

## 4. 合并进路线素材库

```bash
python -m shanghai_planner.cli --merge-captured-materials \
  --captured-materials-dir outputs/captured_materials \
  --materials-dir data/materials
```

## 5. 重新生成工作台

```bash
python -m shanghai_planner.cli --web-workbench \
  --request-dir examples/requests \
  --seed-dir data/seed \
  --materials-dir data/materials \
  --output-dir outputs
```
