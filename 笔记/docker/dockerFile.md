DockerFile体系结构
From    基础镜像，当前镜像基于哪个镜像
MAINTAINER  镜像维护者的姓名和邮箱地址
RUN     构建时需要运行的命令
EXPOSE  当前容器对外暴露的端口
WORKDIR     指定在创建容器后，终端默认登陆进来的工作目录，一个落脚点
ENV     用来在构建镜像过程中设置环境变量
ADD     copy + 解压
COPY    
VOLUME  容器数据卷，用于数据保存和持久化工作
CMD     指定一个容器启动时要运行的命令，Docker中可以有多个CMD指令，但只有最后一个生效，CMD会被docker run之后的参数替换
ENTRYPOINT  指定一个容器启动时要运行的命令 ENTRYPOINT 的目的和CMD一样，都是在指定容器启动程序及参数
ONBUILD     当构建一个被继承的Dockerfile时运行命令，父镜像在被子继承后父镜像的onbuild被触发
小总结
