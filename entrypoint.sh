#!/bin/bash
sleep 5

cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "欢迎使用聚乐云我的世界(Minecraft)基岩服务端(Bedrock)镜像"
echo "更多精彩内容，尽在 https://open.clayun.com"
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}