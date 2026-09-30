# Win-Browser-DNS-Repair
Windows 系统浏览器网络一键修复工具，专门解决修改路由器DNS配置后Chrome/Edge浏览器无法上网、其他软件正常的常见问题。

## 适用场景
改完iStoreOS/OpenWrt上的SmartDNS、AdGuard Home、Open-Box代理配置后，出现：
- 其他软件（微信/QQ）能正常联网，只有Chrome/Edge浏览器打不开网页
- 浏览器能打开内网地址（如192.168.100.1路由器后台），但外网域名全部解析失败
- 改完系统代理、DNS后浏览器报「无法访问此网站」

## 使用方法
1. 下载 `一键修复浏览器网络.bat` 文件到本地
2. 右键点击文件 → 选择「以管理员身份运行」
3. 等待脚本自动执行完成，重启电脑即可恢复上网

## 执行原理
脚本自动完成两个核心修复操作：
1. `ipconfig /flushdns`：清空Windows系统本地DNS缓存，消除之前错误的DNS解析记录
2. `netsh winsock reset`：重置Windows Winsock网络栈，修复因代理/DNS配置修改导致的网络层冲突

## 注意事项
- 脚本执行后必须重启电脑才能完全生效
- 不会修改任何系统配置文件，仅重置网络栈到默认状态，无副作用