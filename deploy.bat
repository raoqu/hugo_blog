echo %cd%
hugo -F
del blog.zip
zip blog.zip -r public
scp blog.zip wwwuser@192.168.2.1:~/web/blog.zip
ssh wwwuser@192.168.2.1 "cd ~/web && rm -rf blog && unzip blog.zip -d blog_temp && mv ./blog_temp/public ./blog && rm -rf blog_temp && rm -f blog.zip"
