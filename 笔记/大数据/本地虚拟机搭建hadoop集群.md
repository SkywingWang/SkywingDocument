虚拟机配置
硬盘50G 内存4G cpu 6 * 2 2 * 2
/boot 200M
/swap 2G

虚拟机准备
1. 防火窗关闭
service iptables stop  //服务关闭
chkconfig iptables off //关闭开机自启

2. 创建一个一般用户sven
useradd sven
passwd sven

3. 在/opt目录下创建software module文件夹
mkdir /opt/software   /opt/module
chown sven:sven /opt/software /opt/module

4. 把这个用户加到sudoers
vim /etc/sudoers
sven ALL=(ALL) NOPASSWD: ALL
:wq! 强制保存

5. 改Hosts
vim /etc/hosts
在文件后追加
例如
192.168.1.100 hadoop100
192.168.1.101 hadoop101
192.168.1.102 hadoop102
192.168.1.103 hadoop103

6. 改静态IP
vim /etc/sysconfig/network-scripts/ifcfg-eth0

DEVICE=eth0
TYPE=Ethernet
ONBOOT=yes
BOOTPROTO=static
IPADDR=192.168.1.100
PREFIX=24
DNS1=192.168.1.2
NAME=eth0

7. 改主机名
vim /etc/sysconfig/network
改HOSTNAME字段
改成 HOSTNAME=hadoop100
拍快照