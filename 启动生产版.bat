@echo off
chcp 65001 >nul
title 多点路线规划软件 - 生产模式
echo ==========================================
echo    多点路线规划软件 - 生产模式启动中
echo ==========================================
echo.

if not exist "dist\index.html" (
    echo 首次运行，需要构建项目...
    echo 正在安装依赖...
    call npm install
    echo.
    echo 正在构建生产版本...
    call npm run build
    echo.
)

echo 正在启动生产服务器...
echo 请打开浏览器访问: http://localhost:4173
echo.
npm run preview
echo.
pause
