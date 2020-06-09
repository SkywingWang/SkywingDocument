1. 查看CPU统计信息：lscpu
2. 查看内存使用情况: free -g 以GB为单位；也可以-m，以MB为单位。
3. 查看硬盘和分区分布：lsblk
4. 查看硬盘和分区的详细信息：fdisk -l
5. 查看服务器系统版本：cat /proc/version
6. 创建root密码: sudo passwd
7. 查看用户列表: 1.查看用户 cat /etc/passwd  2.查看用户组 cat /etc/group  3.查看当前活跃的用户列表 w 4.输出结果简单的命令cat /etc/passwd|grep -v nologin|grep -v halt|grep -v shutdown|awk -F":" '{ print $1"|"$3"|"$4 }'|more
8. 重启命令：shutdown -r now