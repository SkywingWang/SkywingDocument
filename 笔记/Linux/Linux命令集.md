1. 查看CPU统计信息：lscpu
2. 查看内存使用情况: free -g 以GB为单位；也可以-m，以MB为单位。
3. 查看硬盘和分区分布：lsblk
4. 查看硬盘和分区的详细信息：fdisk -l
5. 查看内存信息：dmidecode|grep -A5 "Memory Device"|grep Size|grep -v Range
6. 查看服务器系统版本：cat /proc/version
7. 创建root密码: sudo passwd
8. 查看用户列表: 1.查看用户 cat /etc/passwd  2.查看用户组 cat /etc/group  3.查看当前活跃的用户列表 w 4.输出结果简单的命令cat /etc/passwd|grep -v nologin|grep -v halt|grep -v shutdown|awk -F":" '{ print $1"|"$3"|"$4 }'|more
9. 重启命令：shutdown -r now
10. 上传文件到linux：scp /Users/skywingking/Downloads/filenames username@servername:/path
11. 从linux下载文件到本地：scp username@servername:/path/filename /Users/skywingking/Downloads/（本地目录）
12. 剪切文件：mv -fiv source目录 destination目录 （-f:force,强制直接移动而不询问，-i:若目标文件(destination)已存在，就会询问是否覆盖，-u:若目标文件已经存在，且源文件比较新，才会更新）
13. 解压文件包：tar -xzvf test.tar.gz 
14. 添加用户：在root权限下 useradd +用户名 添加用户。passwd +用户名 为用户设置密码。
15. 查询服务器上运行的程序的位置：用ps及top命令查看进程信息。 ps -ef|grep java. 获取程序对应的PID。 通过ll /proc/“PID” 命令查询，获取程序的绝对地址