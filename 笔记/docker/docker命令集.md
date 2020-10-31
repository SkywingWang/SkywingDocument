1. 查看所有容器     docker ps -a
2. 启动一个停止的容器   docker start “容器ID” 或者docker run -it hadoop:v1 /bin/bash 参数-t让Docker分配一个伪终端并绑定在容器的标准输入上，-i让容器的标准输入保持打开
3. 导出容器     docker export
4. 导入容器     docker import
5. 删除容器     docker rm -f "容器ID"
6. 删除镜像     docker rmi "镜像ID"
7. 清理所有终止状态容器     docker container prune
8. 重命名镜像   docker tag "容器ID" "新名称"
9. 重命名容器   docker rename "容器ID" "新名称"
10. springboot 打docker包  mvn compile jib:dockerBuild
