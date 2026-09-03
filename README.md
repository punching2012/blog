# 投资笔记 · 静态博客

个人投资策略笔记站（GitHub Pages 部署）。

- `index.html` — 博客首页（文章列表）
- `posts/barbell-playbook.html` — 《哑铃执行看板 · 三段论操作手册》（自包含可交互工具页）
- `build_public.js` — 从工作副本生成公共版文章的脚本（含敏感信息替换与扫描）

## 本地预览

用浏览器直接打开 `index.html`，或：

```bash
python -m http.server 8000
# http://localhost:8000
```

## 部署（GitHub Pages）

仓库：`https://github.com/punching2012/blog`（main 分支，根目录即站点）。

开启 Pages 两种方式任选：

1. **网页**：仓库 Settings → Pages → Source: `Deploy from a branch` → main / `/` → Save。
2. **API**（需 token）：
   ```bash
   curl -X POST -H "Authorization: Bearer <TOKEN>" \
     "https://api.github.com/repos/punching2012/blog/pages" \
     -d '{"source":{"branch":"main","path":"/"}}'
   ```

手动推送（首次需登录）：
```bash
powershell -ExecutionPolicy Bypass -File deploy.ps1
```

## 内容说明

站点为**公共**内容：文章中"示例组合/示例持仓"均为演示数据，不含真实持仓、金额与账户信息。

> 免责：本站内容为个人策略笔记，非投资建议。
