@echo off
chcp 65001 >nul
title 多点路线规划软件
echo ==========================================
echo    多点路线规划软件 - 桌面版启动中
echo ==========================================
echo.

if not exist "dist\index.html" (
    echo 首次运行，正在构建...
    call npm install
    call npm run build
    echo.
)

if not exist "node_modules\electron" (
    echo 首次运行桌面版，正在安装 Electron...
    call npm install electron --save-dev
    echo.
)

echo 正在启动桌面应用...
npx electron electron-main.js
