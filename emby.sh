#!/bin/bash

# 拉取仓库
git clone https://github.com/Solmonz/test.git

# 创建目录（如果不存在）
mkdir -p /var/lib/emby/plugins/configurations/

# 替换 mb.lic 文件
cp -f test/mb.lic /var/lib/emby/config/mb.lic

# 替换 9a8986d133817e36ae8c9560ed154077 文件
cp -f test/9a8986d133817e36ae8c9560ed154077 /var/lib/emby/plugins/configurations/9a8986d133817e36ae8c9560ed154077

# 替换 embypremiere.js 文件
cp -f test/embypremiere.js /opt/emby-server/system/dashboard-ui/embypremiere.js

# 替换 Emby.Web.dll 文件
cp -f test/Emby.Web.dll /opt/emby-server/system/Emby.Web.dll

# 清理临时文件（可选）
rm -rf test

# 输出操作完成信息
echo "Emby 更新完成"
