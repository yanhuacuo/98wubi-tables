#!/bin/bash
echo "下载码表，临时存放到当前目录"
curl -# -SL https://github.com/yanhuacuo/98wubi-squirrel/archive/98wb.zip|tar xz
echo "码表下载完成，清理鼠须管的旧码表"
echo "本次操作需要「管理员权限」，请输入密码"
sudo rm -rf /Library/Input\ Methods/Squirrel.app/Contents/SharedSupport/*
echo "接下来清理鼠须管的旧缓存数据"
rm -rf ~/Library/Rime/*
echo "将新的码表放到鼠须管主程序内"
sudo cp -rf 98wubi-squirrel-98wb/* /Library/Input\ Methods/Squirrel.app/Contents/SharedSupport
echo "向用户目录转移 YAML 文件"
cp -rf 98wubi-squirrel-98wb/*.yaml ~/Library/Rime
echo "向用户目录转移 Lua 文件"
cp -rf 98wubi-squirrel-98wb/rime.lua ~/Library/Rime
echo "重新部署，使新码表生效"
/Library/Input\ Methods/Squirrel.app/Contents/MacOS/Squirrel --reload
echo "清理本地的临时数据，即将完成"
rm -rf 98wubi-squirrel-98wb
echo "码表已更新，本地临时数据已删除，新表已生效"
echo "现在，我们做「字体支持」"
echo "98五笔已支持全部 unicode 13 中的近十万汉字"
echo "「字体支持」还将使你获得完整的98五笔拆分功能"
echo "将需要 3~5 分钟完成这个过程，稍安勿躁。"
curl -# -SL https://github.com/yanhuacuo/fonts/archive/98wb.zip|tar xz
echo "已成功下载到本地"
cd fonts-98wb
echo "解压字体包"
cat 98wb-fonts.tar.gza* | tar -xzv
echo "安装到用户字体目录"
cp -rf 98wb-fonts/*.otf ~/Library/Fonts
cd ..
echo "安装成功，清理临时数据"
rm -rf fonts-98wb
echo "做完，收工。"
