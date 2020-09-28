### 了解LaunchDaemons

#### 简单介绍
使用plist文件（一种xml格式的文件，全称property list）来定义，放入几个指定的目录，具体目录的位置决定了这个plist对应的是一个Agent还是一个Daemon，Agent和Daemon的唯一区别是他们的存放位置，以及为谁服务，Agent只为当前登录的用户服务，Daemon则为root或者指定的用户服务。

#### 目录位置
1. ~/Library/LaunchAgents
2. /Library/LaunchAgents
3. /Library/LaunchDaemons
4. /System/Library/LaunchAgents
5. /System/Library/LaunchDaemons
一般情况下，不需要去动/System下的agents或者daemons。

#### plist文件说明
一般关注几项主要的配置即可：
Label - 标志名称
Program - 运行的程序是哪个
RunAtLoad - 是否在加载的同时启动
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.example.app</string>
        <key>Program</key>
        <string>/Users/Me/Scripts/cleanup.sh</string>
        <key>RunAtLoad</key>
        <true/>
    </dict>
</plist>
```
以上是一个最简版的plist配置实例

#### 操作
plist只是配置，要执行这些配置，需要使用launchctl命令，它运行你罗列信息，加载，卸载，启动和关闭agents或者daemons
#### 获取信息
```
sudo launchctl list
```

#### 加载或卸载
launchctl load ~/Library/LaunchAgents/com.example.app.plist
launchctl load -F ~/Library/LaunchAgents/com.example.app.plist   // 如果被disabled的话， 强制启动

#### 启动或停止
agents或者daemons可以加载但不启动，所以，事后可以单独启动或者关闭：
launchctl start com.example.app
launchctl stop com.example.app

#### References
Daemons and Agents - https://developer.apple.com/library/archive/technotes/tn2083/_index.html
What is launchd? - https://www.launchd.info/
Mac OS X: https://paul.annesley.cc/2012/09/mac-os-x-launchd-is-cool/