::清除所有回显
@echo off
::采用utf-8编码（防止中文乱码）
chcp 65001
::设置当前路径为根路径
cd /d %~dp0
cls
::窗口设置
title npm依赖包批处理安装程序
:menu
cls
color 09

echo         =       =       ====================================================================        =       =   
echo       =   =   =   =     +++\\***************:-npm依赖包批处理安装程序-:****************//+++      =   =   =   = 
echo         =   =   =       ====================================================================        =   =   = 
echo             =                                                                                           =
echo.       
echo.
::setlocal enableDelayedExpansion
::此可执行文件用来安装%installTool% 管理器以及所需要的%installTool% 插件
::环境：需要安装nvm
::检测是否安装了nvm
REM if not exist "C:\software\Nvm\nvm.exe" (
REM     echo nvm未安装！
REM     exit
REM )

echo ======:-安装包管理器》》》=======================================
::安装包管理器
REM nvm install 10.16.0
REM nvm install 10.15.3

::if %hasCnpm%==1 goto a2 else goto a1 
if defined hasCnpm (
    goto notInstallCnpm
) else (
    goto installCnpm
)

:installCnpm
set/p mode=是否安装淘宝镜像(Y/N)?:
if /i %mode%==Y (
    echo.
    echo ======:-安装淘宝镜像》》》=======================================
    npm install -g cnpm --registry=https://registry.npm.taobao.org
    REM @ping 127.0.0.1 -n 6 >nul
    REM start npmInstall.bat
    set hasCnpm=1
    call npmInstall.bat
)
:notInstallCnpm
echo.
echo ======:-启用安装插件》》》=======================================
set/p mode=是否使用淘宝镜像进行安装(Y/N)?:
if /i %mode%==Y (
    set installTool=cnpm  
) else (
    set installTool=npm 
)
echo.
echo ======:-插件安装方式：%installTool%
echo.
echo ======:-10.16.0下安装插件》》》=======================================
::切换10.6.0版本
::nvm use 10.16.0

if %installTool%==npm (
    echo.
    echo ======:-开始启动安装》》》=======================================
    echo ======:-安装vue/react/angular-CLI》》》=======================================
    ::前端框架
    ::vue
    ::安装脚手架中带有@符号�?vscode需要先切换到cmd（powershell不识别@）r
    npm install -g @vue/cli
    ::angualr
    npm install -g @angular/cli
    ::react
    npm install -g create-react-app
    color 09
    echo ======:-安装静态服务器》》》=======================================
    ::静态服务器
    npm install -g serve
    color 09
    echo ======:-安装预编译工具》》》=======================================
    ::预编
    npm install -g babel-cli
    npm install -g less
    npm install -g typescript
    color 09
    echo ======:-安装代码检测工具》》》=======================================
    npm install -g es-checker
    npm install -g eslint
    npm install -g htmlhint
    npm install -g jshint
    npm install -g tslint
    color 09
    echo ======:-安装打包工具》》》=======================================
    npm install -g grunt-cli
    npm install -g webpack-cli
    npm install -g webpack
    REM npm install -g gulp-cli
    REM npm install -g gulp
    color 09
    echo ======:-安装wnode服务端框架（express）》》》=======================================
      ::express插件（web框架）
    npm install -g express-generator
    npm install -g express
    color 09
    echo ======:-安装其他》》》=======================================
    ::搭建博客
    npm install -g hexo-cli
    ::热更新插件配合express
    npm install -g nodemon
    echo  +++++安装完毕====================================================
    npm ls -g -depth 0

)else (
    echo ======:-开始启动安装（cnpm）》》》=======================================
    echo ======:-安装vue/react/angular-CLI》》》=======================================
    ::前端框架
    ::vue
     ::安装脚手架中带有@符号vscode需要先切换到cmd（powershell不识别@�?
    cnpm install -g @vue/cli
    ::angualr
    cnpm install -g @angular/cli
    ::react
    cnpm install -g create-react-app
    color 09
    echo ======:-安装静态服务器》》》=======================================
    ::静态服务器
    cnpm install -g serve
    color 09
    echo ======:-安装预编译工具》》》=======================================
    ::预编
    cnpm install -g babel-cli
    cnpm install -g less
    npm install -g typescript
    color 09
    echo ======:-安装代码检测工具》》》=======================================
    cnpm install -g es-checker
    cnpm install -g eslint
    cnpm install -g htmlhint
    cnpm install -g jshint
    cnpm install -g tslint
    color 09
    echo ======:-安装打包工具》》》=======================================
    cnpm install -g grunt-cli
    cnpm install -g webpack-cli
    cnpm install -g webpack
    REM npm install -g gulp-cli
    REM npm install -g gulp
    color 09
    echo ======:-安装wnode服务端框架（express）》》》=======================================
      ::express插件（web框架）
    cnpm install -g express-generator
    cnpm install -g express
    color 09
    echo ======:-安装其他》》》=======================================
    ::搭建博客
    cnpm install -g hexo-cli
    ::热更新插件配合express
    cnpm install -g nodemon
    echo  +++++安装完毕====================================================
    npm ls -g -depth 0
)


REM echo ***************�?0.15.3下安装插�?************
REM ::切换�?installTool% 10.15.3
REM nvm use 10.15.3
REM ::安装插件
REM ::安装旧版vue/angular
REM %installTool%  install -g vue-cli
REM %installTool%  install -g angular-cli
REM %installTool%  install -g less
REM %installTool%  install -g live-server
REM %installTool%  install -g tslint
REM %installTool%  install -g typescript

REM %installTool%  install -g webpack-cli
REM %installTool%  install -g webpack

REM %installTool% install -g less

pause