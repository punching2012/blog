# PowerShell 部署脚本（首次请先登录：git 会弹出浏览器登录框）
# 用法: powershell -ExecutionPolicy Bypass -File deploy.ps1
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

if (-not (Test-Path ".git")) { git init -b main | Out-Null }

git add -A
if ((git status --porcelain) -ne "") {
  git commit -m "update: 博客内容更新"
  Write-Host "已提交"
} else {
  Write-Host "无变更可提交"
}

if (-not (git remote get-url origin 2>$null)) {
  git remote add origin "https://github.com/punching2012/blog.git"
}
git push -u origin main
Write-Host "推送完成。"
Write-Host "若 Pages 未开启：GitHub 网页 Settings → Pages → Source: Deploy from a branch → main / /"
