@echo off
chcp 65001
:: 自动请求管理员权限
>nul 2>&1 net session
if %errorlevel% neq 0 (
    powershell start-process "%~f0" -verb runas
    exit /b
)

echo ==============================================
echo  Windows 浏览器DNS网络一键修复工具
echo  适用场景：改完路由器DNS/SmartDNS/AdGuardHome配置后，Chrome/Edge浏览器上不了网，其他软件正常
echo ==============================================
echo.

echo [1/2] 正在清理系统DNS缓存...
ipconfig /flushdns
echo.

echo [2/2] 正在重置Winsock网络栈...
netsh winsock reset
echo.

echo ==============================================
echo  修复完成！请重启电脑后浏览器即可正常上网
echo ==============================================
pause