# 灵台 · 个人站点

> 行脚(日常) · 灵蕴(投资) · 神通(技能) · 影神(相册) · 心猿(连载角落)。GitHub Pages 部署。
> 站点首页：https://punching2012.github.io/blog/

## 目录结构

```
index.html                     # 首页（极简：山门菜单 + 题字，无内容列表）
posts/index.html               # 手扎（全部文章列表 + 栏目筛选）
photos.html                    # 影神图（占位；图片放 photos/，规则见源码注释）
daily-ops.md                   # 每日执行文档（AI 唯一入口：阈值总表+输出契约）
daily-log.md                   # 每日执行日志（本地，.gitignore 排除，永不发布）
README.md                      # 本文件
deploy.ps1                     # 部署脚本
posts/
├── barbell-playbook.html      # 投资 · 哑铃执行看板（可交互工具页）
├── daily/                     # 日常记录（命名 YYYY-MM-DD-短标题.html）
│   └── 2026-09-03-hello.html
└── novel/                     # 连载（不起眼的角落入口，百度/谷歌不收录）
    ├── index.html             # 连载目录（含更新记录格式约定）
    └── chapter-NNN.html       # 章节（复制现有章节样式）
photos/                        # 相册图片（按需创建）
```

## 发新内容（AI 或手动）

1. **普通文章**：在 `posts/对应栏目/` 放自包含 HTML（复制现有文章骨架），首页 `index.html` 的 `POSTS` 数组加一行 `{t,d,c:栏目,h:'posts/...',x,tags}`。
2. **投资工具页**：可交互、自包含、无外部依赖；结论标注数据截止日。
3. **照片**：压缩至 1MB 内放 `photos/`，在 `photos.html` 按注释格式加一行。
4. **连载**：新章节 `posts/novel/chapter-NNN.html`，并在 `index.html` 列表与"记录"处各加一行。
5. 提交后跑 `powershell -ExecutionPolicy Bypass -File deploy.ps1`。

## 隐私红线（每次发布前检查）

- 公开页禁止：真实持仓与金额、账户信息、地址、身份信息；一律使用示例口径或删除。
- `daily-log.md` 已被 `.gitignore` 排除；如误 add，立即撤回。
- 连载页 `noindex`，不让搜索引擎收录——角落就是角落。

## 部署

- Pages：main / root，见仓库 Settings → Pages。
- 本地预览：`python -m http.server 8000` 或直接双击 `index.html`。

> 免责：本站投资内容为个人策略笔记，非投资建议。
