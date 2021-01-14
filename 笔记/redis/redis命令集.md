1. 清空所有数据 FLUSHALL
2. 查看记录条数 DBSIZE
3. 登录客户端 redis-cli
4. redis安装目录    /usr/local/redis-6.0.5
5. redis服务启动目录 /usr/local/bin
6. 查看所有的key：  keys *
7. 获取某个key的值： GET KEY_NAME
8. 删除某个key的值： DEL KEY_NAME
9. redis连接远程: redis-cli -h IP地址 -p 端口 -a "password"