@echo off
@REM 在node.js V17以前一些可以正常运行的的应用程序,但是在 V17 版本可能会抛出以下异常
set NODE_OPTIONS=--openssl-legacy-provider

rem 生成静态文件
npm run build

rem 进入生成的文件夹
cd docs/.vuepress/dist

rem deploy to github pages
echo 'www.kashimura.cc' > CNAME
git init
git add -A
git commit -m "deploy"

rem 推送到github gh-pages分支
git push -f git@github.com:KashimuraSama/vuepress-blog.git master:gh-pages

cd ../../..