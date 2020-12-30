1. 查看所有容器     docker ps -a
2. 启动一个停止的容器   docker start “容器ID” 或者docker run -it hadoop:v1 /bin/bash 参数 -t 让Docker分配一个伪终端并绑定在容器的标准输入上，-i让容器的标准输入保持打开  -d 后台启动
3. 导出容器     docker export
4. 导入容器     docker import
5. 删除容器     docker rm -f "容器ID" 删除全部镜像，包括已停用 docker rm -f $(docker ps -qa)
6. 删除镜像     docker rmi "镜像ID"  删除全部镜像 docker rmi -f $(docker images -qa)
7. 清理所有终止状态容器     docker container prune
8. 重命名镜像   docker tag "容器ID" "新名称"
9. 重命名容器   docker rename "容器ID" "新名称"
10. springboot 打docker包  mvn compile jib:dockerBuild
11. 查看容器信息    docker info
12. 查看本地所有镜像    docker images   ｜ -a 列出本地所有镜像  -q 只显示镜像ID  --digests 显示摘要信息  --no-trunc 显示完整信息
13. 搜索远程镜像资源    docker search ** 
14. 拉取远程镜像    docker pull **
15. 退出容器  退出并停止容器 exit  退出不停止容器 ctrl + alt + P
16. 查看容器内部细节 docker inspect
# 查看 容器ip 地址
docker inspect --format='{{.NetworkSettings.IPAddress}}' ID/NAMES
17. 重新进入正在运行的容器 docker attach "ID"
18. docker 给运行中的容器添加映射端口
第一种:
docker inspect `container_name` | grep IPAddress
iptables -t nat -A  DOCKER -p tcp --dport 50070 -j DNAT --to-destination 172.17.0.2:50070   //这条命令报错
第二种:
保存image 重新-p run
第三种:
更改容器的config /var/lib/docker/containers/[hash_of_the_container]/hostconfig.json
重启docker服务



