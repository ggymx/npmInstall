@echo off
cls
title 终极多功能修复
:menu
cls
color 0A
echo.
echo                 ==============================
echo                 请选择要进行的操作，然后按回车
echo                 ==============================
echo.
echo              1.网络修复及上网相关设置,修复IE,自定义屏蔽网站
echo.
echo              2.病毒专杀工具，端口关闭工具,关闭自动播放
echo.
echo              3.清除所有多余的自启动项目，修复系统错误
echo.
echo              4.清理系统垃圾,提高启动速度
echo.
echo              Q.退出
echo.
echo.
:cho
set choice=
set /p choice=          请选择:
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" goto ip
if /i "%choice%"=="2" goto setsave
if /i "%choice%"=="3" goto kaiji
if /i "%choice%"=="4" goto clean
if /i "%choice%"=="Q" goto endd
echo 选择无效，请重新输入
echo.
goto cho