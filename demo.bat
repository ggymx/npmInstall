nvm version
echo 安装包管理器
::安装npm包管理器
nvm install 10.16.0
nvm install 10.15.3
echo 是否安装淘宝镜像？
::安装淘宝镜像
set /p num=
if "%num%"=="1"(
 echo 安装淘宝镜像
 npm install -g cnpm --registry=https://registry.npm.taobao.org
@ping 127.0.0.1 -n 6 >nul
start C:\Users\pc\Desktop\npm-install.bat
)
echo 在10.16.0下安装插件
::切换到10.6.0版本
nvm use 10.16.0
::预编译
npm install -g babel-cli
npm install -g less
npm install -g typescript
::代码检测
npm install -g es-checker
npm install -g eslint
npm install -g htmlhint
npm install -g jshint
npm install -g tslint
::打包插件
npm install -g grunt-cli
::npm install -g gulp-cli
::npm install -g gulp
npm install -g webpack-cli
npm install -g webpack
::搭建博客
npm hexo-cli
::express插件（web框架）
npm install -g express-generator
npm install -g express
::静态服务器
npm install -g serve
::其它
npm install -g nodemon
::前端框架
npm install -g create-react-app
::安装脚手架中带有@符号时 需要先切换到cmd（powershell不识别@）
cmd
::vue3.x
npm install -g @vue/cli
::angualr4.x
npm install -g @angular/cli

echo 在10.15.3下安装插件
::切换到npm10.15.3
nvm use 10.15.3
::安装插件
::安装旧版vue/angular
npm install -g vue-cli
npm install -g angular-cli
npm install -g less
npm install -g live-server
npm install -g tslint
npm install -g typescript

npm install -g webpack-cli
npm install -g webpack
