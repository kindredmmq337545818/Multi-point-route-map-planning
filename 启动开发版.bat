@echo off
chcp 65001 >nul
title 多点路线规划软件 - 开发模式
echo ==========================================
echo    多点路线规划软件 - 开发模式启动中
echo ==========================================
echo.
echo 正在安装依赖（如需）...
call npm install
echo.
echo 正在启动开发服务器...
echo 启动后会自动打开浏览器...
echo.
npm run dev
echo.
pause
