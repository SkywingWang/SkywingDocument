1. Chrome跨域: open -n /Applications/Google\ Chrome.app/ --args --disable-web-security --user-data-dir=/Users/skywingking/project/AbilityGroup/ChromeCrossDomainTest
2. AWS 控制台: ssh -i /Users/skywingking/.ssh/aws_mastodon.pem ubuntu@ec2-18-222-137-175.us-east-2.compute.amazonaws.com
3. 设置redis开机启动: sudo vim /Library/LaunchDaemons/io.redis.redis-server.plist
``` XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>io.redis.redis-server</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/local/bin/redis-server</string>
        <string>/usr/local/redis-5.0.5/redis.conf</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
</dict>
</plist>
```
sudo launchctl load /Library/LaunchDaemons/io.redis.redis-server.plist
sudo launchctl start io.redis.redis-server
可对上述命令进行简化（通过设置别名的方式）
切换到用户目录cd
编辑环境变量配置vim .bash_profile
将别名设置粘贴到配置文件
alias redisstart='sudo launchctl start io.redis.redis-server'
alias redisstop='sudo launchctl stop io.redis.redis-server'
source ~/.bash_profile
source ./.bash_profile