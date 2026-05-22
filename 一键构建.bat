@echo off
chcp 65001 >nul
title 多点路线规划软件 - 构建
echo ==========================================
echo    多点路线规划软件 - 构建生产版本
echo ==========================================
echo.
echo 正在安装依赖...
call npm install
echo.
echo 正在构建生产版本...
call npm run build
echo.
echo ==========================================
echo    构建完成！文件位于 dist 文件夹
echo ==========================================
echo.
pause
