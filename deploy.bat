
rem ���ɾ�̬�ļ�
npm run build

rem �������ɵ��ļ���
cd docs/.vuepress/dist

rem deploy to github pages
echo 'www.kashimura.cc' > CNAME
git init
git add -A
git commit -m "deploy"

rem ���͵�github gh-pages��֧
git push -f git@github.com:KashimuraSama/vuepress-blog.git master:gh-pages

cd ../../..