+ [全局规范及说明](#全局规范及说明)
    * [全局请求 URl](#全局请求-url)
    * [请求参数](#请求参数)
    * [手机应用商城](#手机应用商城)
    * [返回结果](#返回结果)
    * [返回参数](#返回参数)
    * [业务返回码](#业务返回码)
    * [参数格式验证错误](#参数格式验证错误)
+ [认证](#认证)
    * [注册](#注册)
        - [请求说明](#请求说明)
        - [请求参数](#请求参数_1)
        - [返回结果](#返回结果_1)
        - [返回参数](#返回参数_1)
    * [登录](#登录)
        - [请求说明](#请求说明_1)
        - [请求参数](#请求参数_2)
        - [返回结果](#返回结果_2)
        - [返回参数](#返回参数_2)
    * [注销](#注销)
        - [请求说明](#请求说明_2)
        - [请求参数](#请求参数_3)
        - [返回结果](#返回结果_3)
        - [返回参数](#返回参数_3)
    * [找回密码](#找回密码)
        - [请求说明](#请求说明_3)
        - [请求参数](#请求参数_4)
        - [返回结果](#返回结果_4)
        - [返回参数](#返回参数_4)
+ [用户](#用户)
    * [用户信息](#用户信息)
        - [请求说明](#请求说明_4)
        - [请求参数](#请求参数_5)
        - [返回结果](#返回结果_5)
        - [返回参数](#返回参数_5)
    * [修改个人信息](#修改个人信息)
        - [请求说明](#请求说明_5)
        - [请求参数](#请求参数_6)
        - [返回结果](#返回结果_6)
        - [返回参数](#返回参数_6)
+ [商城](#商城)
    * [主页](#主页)
        - [请求说明](#请求说明_6)
        - [请求参数](#请求参数_7)
        - [返回结果](#返回结果_7)
        - [返回参数](#返回参数_7)
    * [商品详情](#商品详情)
        - [请求说明](#请求说明_7)
        - [请求参数](#请求参数_8)
        - [返回结果](#返回结果_8)
        - [返回参数](#返回参数_8)
    * [游戏主页](#游戏主页)
        - [请求说明](#请求说明_8)
        - [请求参数](#请求参数_9)
        - [返回结果](#返回结果_9)
        - [返回参数](#返回参数_9)
    * [热门游戏](#热门游戏)
        - [请求说明](#请求说明_9)
        - [请求参数](#请求参数_10)
        - [返回结果](#返回结果_10)
        - [返回参数](#返回参数_10)
    * [可能喜欢的游戏](#可能喜欢的游戏)
        - [请求说明](#请求说明_10)
        - [请求参数](#请求参数_11)
        - [返回结果](#返回结果_11)
        - [返回参数](#返回参数_11)
    * [其他人喜欢的游戏](#其他人喜欢的游戏)
        - [请求说明](#请求说明_11)
        - [请求参数](#请求参数_12)
        - [返回结果](#返回结果_12)
        - [返回参数](#返回参数_12)
    * [评论游戏](#评论游戏)
        - [请求说明](#请求说明_12)
        - [请求参数](#请求参数_13)
        - [返回结果](#返回结果_13)
        - [返回参数](#返回参数_13)
    * [修改评论游戏](#修改评论游戏)
        - [请求说明](#请求说明_13)
        - [请求参数](#请求参数_14)
        - [返回结果](#返回结果_14)
        - [返回参数](#返回参数_14)
+ [第三方](#第三方)
    * [获取七牛 token](#获取七牛-token)
        - [请求说明](#请求说明_14)
        - [请求参数](#请求参数_15)
        - [返回结果](#返回结果_15)
        - [返回参数](#返回参数_15)
    * [????](#)
        - [请求说明](#请求说明_15)
        - [请求参数](#请求参数_16)
        - [返回结果](#返回结果_16)
        - [返回参数](#返回参数_16)

# 全局规范及说明
>app server 端使用 http restful 规范，用户登录信息放在 header 中传输。
## 全局请求 URl
http://api.pfshtech.com/

`domain + api_url`
## 请求参数
| 字段        | 类型   | 必填 | 最大长度 | 描述                          | 示例值           |
| ----------- | ------ | ---- | -------- | ----------------------------- | ---------------- |
| api_token   | string | no   | 60       | 用户登录凭证                  | jcVWjtyj2n4DX... |
| sys_version | string | yes  | 20       | 手机系统版本                  | 10.0.0           |
| app_version | string | yes  | 20       | App 版本                      | 1.1              |
| api_version | string | yes  | 20       | Api 版本                      | v1               |
| app_store   | string | yes  | 10       | [手机应用商城](#手机应用商城) | apple            |
| timestamp   | int    | yes  | 10       | 发送请求的时间                | 1496682954       |
## 手机应用商城
| 手机应用商城 | 说明           |
| ------------ | -------------- |
| apple        | 苹果 app store |
| mi           | 小米           |
| qq           | 应用宝         |
| 360          | 306            |
| baidu        | 百度手机助手   |
## 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
    }
}
```
## 返回参数
| 字段    | 类型   | 必填 | 最大长度 | 描述                      | 示例值 |
| ------- | ------ | ---- | -------- | ------------------------- | ------ |
| code    | int    | yes  | -        | [业务返回码](#业务返回码) | 0      |
| status  | int    | yes  | -        | [HTTP 状态码](#http)      | 200    |
| message | string | yes  | -        | 业务返回码描述            | 成功   |
## 业务返回码
| 业务返回码 | HTTP 状态码 | 说明                                      | 解决方案 |
| ---------- | ----------- | ----------------------------------------- | -------- |
| 0          | 200         | 成功                                      |          |
| 400        | 400         | HTTP 请求不满足要求                       |          |
| 401        | 401         | 用户没有权限 重新登录                     |          |
| 403        | 403         | api_token 验证失败                        |          |
| 404        | 404         | 请求的记录不存在                          |          |
| 2000       | 422         | 增、删、改时验证错误                      |          |
| 500        | 500         | 服务器发生 500 错误，无法判断操作是否生效 |          |
| 1000       | 400         | 失败                                      | -        |
| 1001       | 400         | 密码错误                                  | -        |

## 参数格式验证错误
> 此类错误一般客户端独自解决，请检查参数类型 / 长度..., 具体查看返回 message.
> | 业务返回码 | HTTP 状态码 | 说明       | 解决方案 |
> | ---------- | ----------- | ---------- | -------- |
> | 2001       | 422         | 用户       | user_id  |
> | 2002       | 422         | 密码       | password |
> | 2003       | 422         | 金币       | gold     |
> | 2004       | 422         | 昵称       | nickname |
> | 2005       | 422         | 电子邮件   | email    |
> | 2006       | 422         | QQ         | qq       |
> | 2007       | 422         | 姓名       | name     |
> | 2008       | 422         | 身份证号   | id_card  |
> | 2009       | 422         | 短信验证码 | sms_code |
> | 2010       | 422         | 手机号     | mobile   |


# 认证
## 注册
> 功能描述：提供手机号和密码注册帐号。
### 请求说明
> 请求方式：POST<br>
> 请求 URL ：`/auth/register`<br>
> 是否登录 ：**no**<br>
### 请求参数
| 字段     | 类型   | 必填 | 最大长度 | 描述       | 示例值                           |
| -------- | ------ | ---- | -------- | ---------- | -------------------------------- |
| mobile   | string | yes  | 11       | 手机号     | 17777780010                      |
| password | string | yes  | 32       | 密码 (md5) | 74753eccf3282f4a1d89fabea57d8edd |
| sms_code | int    | yes  | 4        | 短信验证码 | 1234                             |
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "api_token": "PWWZ9aakgeARqeUEzhfNMGjepFEZH8PFx45DT7wGg5cInD2Sj0LpHAovKpsy",
        "user": {
            "mobile": "13875420685",
            "nickname": "TMbp7RTtx5",
            "updated_at": "2017-06-11 17:42:44",
            "id": 104
        }
    }
}
```
### 返回参数
| 字段      | 类型   | 必填 | 最大长度 | 描述         | 示例值           |
| --------- | ------ | ---- | -------- | ------------ | ---------------- |
| api_token | string | yes  | 60       | 用户登录凭证 | jcVWjtyj2n4DX... |
* 错误状态码
参见 [HTTP 状态码](#http)

## 登录
> 功能描述：提供手机号和密码的登录方式。
### 请求说明
> 请求方式：POST<br>
> 请求 URL ：`/auth/login`<br>
> 是否登录 ：**no**<br>
### 请求参数
| 字段     | 类型   | 必填 | 最大长度 | 描述       | 示例值                           |
| -------- | ------ | ---- | -------- | ---------- | -------------------------------- |
| mobile   | string | yes  | 11       | 手机号     | 17777780010                      |
| password | string | yes  | 32       | 密码 (md5) | 74753eccf3282f4a1d89fabea57d8edd |
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "api_token": "5KY4UKOroBxTmX8jjHy2IyBq8OCi7m2MFW97WK8M17MntCN6ls4vsuJEP2Ep",
        "user": {
            "id": 1,
            "gold": 0,
            "mobile": 17777780010,
            "email": "example@gmail.com",
            "nickname": "nickname",
            "avatar": "http://ontor4oby.bkt.clouddn.com/FlG2jowPP4LMqbSLx19I50hGT8Ap",
            "qq": 10000,
            "signature": "此人太懒了，什么都没有留下。",
            "name": "张三",
            "id_card": "100000201706060000",
            "updated_at": "2017-06-11 17:44:52"
        }
    }
}
```
### 返回参数
| 字段      | 类型   | 必填 | 最大长度 | 描述         | 示例值           |
| --------- | ------ | ---- | -------- | ------------ | ---------------- |
| api_token | string | yes  | 60       | 用户登录凭证 | jcVWjtyj2n4DX... |
* 错误状态码
参见 [HTTP 状态码](#http)

## 注销
> 功能描述：注销登录。
### 请求说明
> 请求方式：DELETE<br>
> 请求 URL ：`/auth/logout`<br>
> 是否登录 ：**yes**<br>
### 请求参数
无参数
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": []
}
```
### 返回参数
无参数
* 错误状态码
参见 [HTTP 状态码](#http)

## 找回密码
> 功能描述：使用手机号和验证码找回帐号。
### 请求说明
> 请求方式：POST<br>
> 请求 URL ：`/auth/reset`<br>
> 是否登录 ：**no**<br>
### 请求参数
| 字段     | 类型   | 必填 | 最大长度 | 描述       | 示例值                           |
| -------- | ------ | ---- | -------- | ---------- | -------------------------------- |
| mobile   | string | yes  | 11       | 手机号     | 17777780010                      |
| password | string | yes  | 32       | 密码 (md5) | 74753eccf3282f4a1d89fabea57d8edd |
| sms_code | int    | yes  | 4        | 短信验证码 | 1234                             |
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "api_token": "0KNbhUsNdPIRMvDIUYnC5G1zk9opZ9dnilZKGFmk4bKT6epkjdupkHxySFlh",
        "user": {
            "id": 1,
            "gold": 0,
            "mobile": 17777780010,
            "email": "example@gmail.com",
            "nickname": "nickname",
            "avatar": "http://ontor4oby.bkt.clouddn.com/FlG2jowPP4LMqbSLx19I50hGT8Ap",
            "qq": 10000,
            "signature": "此人太懒了，什么都没有留下。",
            "name": "张三",
            "id_card": "100000201706060000",
            "updated_at": "2017-06-11 17:45:59"
        }
    }
}
```
### 返回参数
| 字段      | 类型   | 必填 | 最大长度 | 描述         | 示例值                                                       |
| --------- | ------ | ---- | -------- | ------------ | ------------------------------------------------------------ |
| api_token | string | yes  | 60       | api_token 值 | cJf0Z6An9fI70Csl390QSrscvvwZqoqKgvvt82O7QKYbxkZvALPDVGOcnOce |
* 错误状态码
参见 [HTTP 状态码](#http)

# 用户
## 用户信息
> 功能描述：获取用户信息。
### 请求说明
> 请求方式：GET<br>
> 请求 URL ：`/user/{user_id}`<br>
> 是否登录 ：**yes**<br>
### 请求参数
无参数
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "user": {
            "id": 1,
            "gold": 0,
            "mobile": 17777780010,
            "email": "example@gmail.com",
            "nickname": "nickname",
            "avatar": "http://ontor4oby.bkt.clouddn.com/FlG2jowPP4LMqbSLx19I50hGT8Ap",
            "qq": 10000,
            "signature": "此人太懒了，什么都没有留下。",
            "name": "张三",
            "id_card": "100000201706060000",
            "updated_at": "2017-06-11 17:45:59"
        }
    }
}
```
### 返回参数
| 字段       | 类型   | 必填 | 最大长度 | 描述         | 示例值                       |
| ---------- | ------ | ---- | -------- | ------------ | ---------------------------- |
| user       | array  | yes  | 11       | 用户信息     | -                            |
| id         | int    | yes  | 10       | 用户 ID      | 1                            |
| gold       | int    | no   | 10       | 金币         | 0                            |
| mobile     | string | no   | 11       | 手机号       | 17777780010                  |
| email      | string | no   | 100      | 电子邮箱     | example@gmail.com            |
| nickname   | string | no   | 12       | 昵称         | 系统默认昵称                 |
| avatar     | string | yes  | 50       | 头像地址     | FlG2jowPP4LMqbSLx19I50hGT8Ap |
| qq         | string | no   | 10       | QQ           | 10000                        |
| signarure  | string | yes  | 32       | 个性签名     | 此人太懒了，什么都没有留下。 |
| name       | string | no   | 10       | 姓名         | 张三                         |
| id_card    | string | no   | 18       | 身份证号     | 100000201706060000           |
| updated_at | string | yes  | 19       | 最后活跃时间 | 2017-06-06 05:14:14          |
每组数组用空行隔开
* 错误状态码
参见 [HTTP 状态码](#http)

## 修改个人信息
> 功能描述：修改个人信息。
### 请求说明
> 请求方式：PATCH<br>
> 请求 URL ：`/user/{user_id}`<br>
> 是否登录 ：**yes**<br>
### 请求参数
| 字段      | 类型   | 必填 | 最大长度 | 描述     | 示例值                       |
| --------- | ------ | ---- | -------- | -------- | ---------------------------- |
| email     | string | no   | 100      | 电子邮箱 | example@gmail.com            |
| nickname  | string | no   | 12       | 昵称     | 系统默认昵称                 |
| avatar    | string | no   | 50       | 头像地址 | FlG2jowPP4LMqbSLx19I50hGT8Ap |
| qq        | string | no   | 10       | QQ       | 10000                        |
| signarure | string | no   | 32       | 个性签名 | 此人太懒了，什么都没有留下。 |
| name      | string | no   | 10       | 姓名     | 张三                         |
| id_card   | string | no   | 18       | 身份证号 | 100000201706060000           |
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "user": {
            "id": 1,
            "gold": 0,
            "mobile": 17777780010,
            "email": "example@gmail.com",
            "nickname": "nickname",
            "avatar": "http://ontor4oby.bkt.clouddn.com/FlG2jowPP4LMqbSLx19I50hGT8Ap",
            "qq": "10000",
            "signature": "此人太懒了，什么都没有留下。",
            "name": "张三",
            "id_card": "100000201706060000",
            "updated_at": "2017-06-11 17:47:28"
        }
    }
}
```
### 返回参数
| 字段       | 类型   | 必填 | 最大长度 | 描述         | 示例值                       |
| ---------- | ------ | ---- | -------- | ------------ | ---------------------------- |
| user       | array  | yes  | 11       | 用户信息     | -                            |
| id         | int    | yes  | 10       | 用户 ID      | 1                            |
| gold       | int    | no   | 10       | 金币         | 0                            |
| mobile     | string | no   | 11       | 手机号       | 17777780010                  |
| email      | string | no   | 100      | 电子邮箱     | example@gmail.com            |
| nickname   | string | no   | 12       | 昵称         | 系统默认昵称                 |
| avatar     | string | yes  | 50       | 头像地址     | FlG2jowPP4LMqbSLx19I50hGT8Ap |
| qq         | string | no   | 10       | QQ           | 10000                        |
| signarure  | string | yes  | 32       | 个性签名     | 此人太懒了，什么都没有留下。 |
| name       | string | no   | 10       | 姓名         | 张三                         |
| id_card    | string | no   | 18       | 身份证号     | 100000201706060000           |
| updated_at | string | yes  | 19       | 最后活跃时间 | 2017-06-06 05:14:14          |
每组数组用空行隔开
* 错误状态码
参见 [HTTP 状态码](#http)

# 商城
## 主页
> 功能描述：获取商城主页商品列表。
### 请求说明
> 请求方式：get<br>
> 请求 URL ：`/goods`<br>
> 是否登录 ：**no**<br>
### 请求参数
无参数
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "goods": [
            {
                "id": 1,
                "name": "LGMuBCVw",
                "price": 458,
                "stock": 618,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 2,
                "name": "kVo7Lty64",
                "price": 121,
                "stock": 132,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 3,
                "name": "kXvqZT",
                "price": 134,
                "stock": 108,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 4,
                "name": "TMU7W",
                "price": 136,
                "stock": 758,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 5,
                "name": "XCE",
                "price": 755,
                "stock": 116,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 6,
                "name": "M4NXU03",
                "price": 913,
                "stock": 377,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 7,
                "name": "1SWibhd",
                "price": 238,
                "stock": 979,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 8,
                "name": "bcxg2OFmEA",
                "price": 626,
                "stock": 425,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            },
            {
                "id": 9,
                "name": "BUSoO",
                "price": 712,
                "stock": 163,
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "updated_at": "2017-06-11 17:24:56"
            }
        ]
    }
}
```
### 返回参数
| 字段  | 类型   | 必填 | 最大长度 | 描述     | 示例值      |
| ----- | ------ | ---- | -------- | -------- | ----------- |
| goods | array  | no   | 10       | 商品列表 | -           |
| id    | int    | yes  | 10       | 用户 ID  | 1           |
| name  | string | yes  | 255      | 商品名称 | DNF 游戏币  |
| price | int    | yes  | 10       | 价格     | 20          |
| stock | int    | yes  | 10       | 库存     | 200         |
| img   | string | yes  | 200      | 图片     | http://???? |
* 错误状态码
参见 [HTTP 状态码](#http)

## 商品详情
> 功能描述：获得商品详情
### 请求说明
> 请求方式：GET<br>
> 请求 URL ：`/goods/{goods_id}`<br>
> 是否登录 ：**no**<br>
### 请求参数
无参数
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "goods": {
            "id": 1,
            "name": "LGMuBCVw",
            "stock": 618,
            "price": 458,
            "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
            "type": 1,
            "description": "t6M7LBIwb9yK7bTtDyJsYaZUZ5",
            "receiving": {
                "游戏区服": "请填写游戏大区",
                "游戏帐号": "请填写游戏注册帐号",
                "游戏角色名": "请填写角色名"
            },
            "updated_at": "2017-06-11 17:24:56"
        }
    }
}
```
### 返回参数
| 字段          | 类型     | 必填   | 最大长度   | 描述                          | 示例值                |
| ------------- | -------- | ------ | ---------- | ----------------------------- | --------------------- |
| goods         | array    | no     | 10         | 商品列表                      | -                     |
| id            | int      | yes    | 10         | 用户 ID                       | 1                     |
| name          | string   | yes    | 255        | 商品名称                      | DNF 游戏币            |
| price         | int      | yes    | 10         | 价格                          | 20                    |
| stock         | int      | yes    | 10         | 库存                          | 200                   |
| img           | string   | yes    | 200        | 图片                          | http://????           |
| type          | int      | yes    | 1          | 商品类型 (0: 虚拟 1: 实物）   | 0                     |
| description   | array    | no     | ?          | 商品描述                      | -                     |
| ------------- | -------- | ------ | ---------- | ----------------------------- | --------------------- |
| receiving     | array    | no     | ?          | 收货人信息                    | -                     |
| ------------- | -------- | ------ | ---------- | ----------------------------- | --------------------- |
| updated_at    | float    | yes    | 15         | 最后更新时间                  | 2017-06-11 17:24:56   |
* 错误状态码
参见 [HTTP 状态码](#http)

## 游戏主页
> 功能描述：游戏主页
### 请求说明
> 请求方式：GET<br>
> 请求 URL ：`/game`<br>
> 是否登录 ：**no**<br>
### 请求参数
无
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "hot": [
            {
                "id": 1,
                "name": "uNNZpB",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 11,
                "grades": 22,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 2,
                "name": "5f7e7",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 3,
                "name": "9eP3EZ",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 4,
                "name": "O9PNNy1",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 5,
                "name": "rGDO5ah97",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            }
        ],
        "like": [
            {
                "id": 1,
                "name": "uNNZpB",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 11,
                "grades": 22,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 2,
                "name": "5f7e7",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 3,
                "name": "9eP3EZ",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 4,
                "name": "O9PNNy1",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 5,
                "name": "rGDO5ah97",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            }
        ],
        "other": [
            {
                "id": 1,
                "name": "uNNZpB",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 11,
                "grades": 22,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 2,
                "name": "5f7e7",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 3,
                "name": "9eP3EZ",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 4,
                "name": "O9PNNy1",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 5,
                "name": "rGDO5ah97",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            }
        ]
    }
}
```
### 返回参数
| 字段         | 类型     | 必填   | 最大长度   | 描述           | 示例值                |
| ------------ | -------- | ------ | ---------- | -------------- | --------------------- |
| hot          | array    | yes    | 5          | 热门           | -                     |
| id           | int      | yes    | 10         | 游戏 ID        | 1                     |
| naem         | string   | yes    | 50         | 游戏名称       | 王者荣耀              |
| img          | string   | yes    | 50         | 游戏图片       | http://???            |
| comments     | int      | yes    | 10         | 评价数         | 50                    |
| grades       | int      | yes    | 10         | 总得分         | 200                   |
| updated_at   | float    | yes    | 15         | 最后更新时间   | 2017-06-11 17:24:56   |
| ------------ | -------- | ------ | ---------- | -------------- | --------------------- |
| like         | array    | yes    | 5          | 可能喜欢       | -                     |
| hot          | array    | yes    | 5          | 热门           | -                     |
| id           | int      | yes    | 10         | 游戏 ID        | 1                     |
| naem         | string   | yes    | 50         | 游戏名称       | 王者荣耀              |
| img          | string   | yes    | 50         | 游戏图片       | http://???            |
| comments     | int      | yes    | 10         | 评价数         | 50                    |
| grades       | int      | yes    | 10         | 总得分         | 200                   |
| updated_at   | float    | yes    | 15         | 最后更新时间   | 2017-06-11 17:24:56   |
| ------------ | -------- | ------ | ---------- | -------------- | --------------------- |
| other        | array    | yes    | 5          | 其他人喜欢的   | -                     |
| hot          | array    | yes    | 5          | 热门           | -                     |
| id           | int      | yes    | 10         | 游戏 ID        | 1                     |
| naem         | string   | yes    | 50         | 游戏名称       | 王者荣耀              |
| img          | string   | yes    | 50         | 游戏图片       | http://???            |
| comments     | int      | yes    | 10         | 评价数         | 50                    |
| grades       | int      | yes    | 10         | 总得分         | 200                   |
| updated_at   | float    | yes    | 15         | 最后更新时间   | 2017-06-11 17:24:56   |
* 错误状态码
参见 [HTTP 状态码](#http)

## 热门游戏
> 功能描述：获取最热游戏
### 请求说明
> 请求方式：GET<br>
> 请求 URL ：`/game/hot`<br>
> 是否登录 ：**no**<br>
### 请求参数
无
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "hot": [
            {
                "id": 1,
                "name": "uNNZpB",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 11,
                "grades": 22,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 2,
                "name": "5f7e7",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 3,
                "name": "9eP3EZ",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 4,
                "name": "O9PNNy1",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 5,
                "name": "rGDO5ah97",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            }
        ]
    }
}
```
### 返回参数
| 字段       | 类型   | 必填 | 最大长度 | 描述         | 示例值              |
| ---------- | ------ | ---- | -------- | ------------ | ------------------- |
| hot        | array  | no   | 5        | 热门         | -                   |
| id         | int    | yes  | 10       | 游戏 ID      | 1                   |
| naem       | string | yes  | 50       | 游戏名称     | 王者荣耀            |
| img        | string | yes  | 50       | 游戏图片     | http://???          |
| comments   | int    | yes  | 10       | 评价数       | 50                  |
| grades     | int    | yes  | 10       | 总得分       | 200                 |
| updated_at | float  | yes  | 15       | 最后更新时间 | 2017-06-11 17:24:56 |
* 错误状态码
参见 [HTTP 状态码](#http)

## 可能喜欢的游戏
> 功能描述：可能喜欢的游戏
### 请求说明
> 请求方式：GET<br>
> 请求 URL ：`/game/like`<br>
> 是否登录 ：**no**<br>
### 请求参数
无
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "hot": [
            {
                "id": 1,
                "name": "uNNZpB",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 11,
                "grades": 22,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 2,
                "name": "5f7e7",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 3,
                "name": "9eP3EZ",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 4,
                "name": "O9PNNy1",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 5,
                "name": "rGDO5ah97",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            }
        ]
    }
}
```
### 返回参数
| 字段       | 类型   | 必填 | 最大长度 | 描述         | 示例值              |
| ---------- | ------ | ---- | -------- | ------------ | ------------------- |
| like       | array  | no   | 5        | 热门         | -                   |
| id         | int    | yes  | 10       | 游戏 ID      | 1                   |
| naem       | string | yes  | 50       | 游戏名称     | 王者荣耀            |
| img        | string | yes  | 50       | 游戏图片     | http://???          |
| comments   | int    | yes  | 10       | 评价数       | 50                  |
| grades     | int    | yes  | 10       | 总得分       | 200                 |
| updated_at | float  | yes  | 15       | 最后更新时间 | 2017-06-11 17:24:56 |
* 错误状态码
参见 [HTTP 状态码](#http)

## 其他人喜欢的游戏
> 功能描述：其他人喜欢的游戏
### 请求说明
> 请求方式：GET<br>
> 请求 URL ：`/game/other`<br>
> 是否登录 ：**no**<br>
### 请求参数
无
### 返回结果
```json
{
    "code": 0,
    "status": 200,
    "message": "成功",
    "data": {
        "hot": [
            {
                "id": 1,
                "name": "uNNZpB",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 11,
                "grades": 22,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 2,
                "name": "5f7e7",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 3,
                "name": "9eP3EZ",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 4,
                "name": "O9PNNy1",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            },
            {
                "id": 5,
                "name": "rGDO5ah97",
                "img": "http://ontor4oby.bkt.clouddn.com/FmrnK7zl3zC_LZDPhP9g0VyHL08V",
                "comments": 0,
                "grades": 0,
                "updated_at": "2017-06-11 17:24:55"
            }
        ]
    }
}
```
### 返回参数
| 字段       | 类型   | 必填 | 最大长度 | 描述         | 示例值              |
| ---------- | ------ | ---- | -------- | ------------ | ------------------- |
| other      | array  | no   | 5        | 热门         | -                   |
| id         | int    | yes  | 10       | 游戏 ID      | 1                   |
| naem       | string | yes  | 50       | 游戏名称     | 王者荣耀            |
| img        | string | yes  | 50       | 游戏图片     | http://???          |
| comments   | int    | yes  | 10       | 评价数       | 50                  |
| grades     | int    | yes  | 10       | 总得分       | 200                 |
| updated_at | float  | yes  | 15       | 最后更新时间 | 2017-06-11 17:24:56 |
* 错误状态码
参见 [HTTP 状态码](#http)

## 评论游戏
> 功能描述：评论游戏
### 请求说明
> 请求方式：POST<br>
> 请求 URL ：`/gameComment`<br>
> 是否登录 ：**yes**<br>
### 请求参数
| 字段    | 类型   | 必填 | 最大长度 | 描述     | 示例值   |
| ------- | ------ | ---- | -------- | -------- | -------- |
| game_id | int    | yes  | 10       | 游戏 ID  | 1        |
| grade   | int    | yes  | 10       | 评分     | 2        |
| comment | string | yes  | 255      | 评价内容 | 评价内容 |
### 返回结果
```json
{
  "code": 0,
  "status": 200,
  "message": "成功",
  "data": {
    "game_comment": {
      "game_id": 1,
      "grade": 2,
      "content": "评价内容",
      "user_id": 1,
      "id": 164
    }
  }
}
```
### 返回参数
| 字段 | 类型 | 必填 | 最大长度 | 描述 | 示例值 |
| ---- | ---- | ---- | -------- | ---- | ------ |
| ???? | ???? | ???? | ????     | ???? | ????   |
* 错误状态码
参见 [HTTP 状态码](#http)

## 修改评论游戏
> 功能描述：修改评论游戏
### 请求说明
> 请求方式：PATCH<br>
> 请求 URL ：`/gameComment/{game_comment_id}`<br>
> 是否登录 ：**yes**<br>
### 请求参数
| 字段    | 类型   | 必填 | 最大长度 | 描述     | 示例值         |
| ------- | ------ | ---- | -------- | -------- | -------------- |
| grade   | int    | yes  | 10       | 评分     | 2              |
| comment | string | yes  | 255      | 评价内容 | 这游戏挺有意思 |
### 返回结果
```json
{
  "code": 0,
  "status": 200,
  "message": "成功",
  "data": {
    "game_comment": {
      "game_id": 1,
      "grade": 2,
      "content": "这游戏挺有意思",
      "user_id": 1,
      "id": 164
    }
  }
}
```
### 返回参数
| 字段 | 类型 | 必填 | 最大长度 | 描述 | 示例值 |
| ---- | ---- | ---- | -------- | ---- | ------ |
| ???? | ???? | ???? | ????     | ???? | ????   |
* 错误状态码
参见 [HTTP 状态码](#http)

# 第三方
## 获取七牛 token
> 功能描述：获取七牛
### 请求说明
> 请求方式：GET<br>
> 请求 URL ：`/qiniu/token`<br>
> 是否登录 ：**yes**<br>
### 请求参数
| 字段 | 类型 | 必填 | 最大长度 | 描述                                   | 示例值 |
| ---- | ---- | ---- | -------- | -------------------------------------- | ------ |
| type | int  | yes  | 1        | (1: 头像 2: 游戏 3: 游戏类别 4: 商品） | ????   |
### 返回结果
```json
{
  "code": 0,
  "status": 200,
  "message": "成功",
  "data": {
    "qiniu_token": "byk8ZbVBkd5diiBOWV1GRiAV4vnnl3_tOLlXTDpm:v4oNw1y7cXVeq8cctkI94VR0jcA=:eyJyZXR1cm5Cb2R5Ijoie1wia2V5XCI6XCIkKGtleSlcIixcIm5hbWVcIjpcIiQoZm5hbWUpXCIsXCJzaXplXCI6XCIkKGZzaXplKVwiLFwidHlwZVwiOlwiJChtaW1lVHlwZSlcIixcImhhc2hcIjpcIiQoZXRhZylcIixcIndpZHRoXCI6XCIkKGltYWdlSW5mby53aWR0aClcIixcImhlaWdodFwiOlwiJChpbWFnZUluZm8uaGVpZ2h0KVwiLFwieDpkb21haW5cIjpcImh0dHA6XFxcL1xcXC9vbnRvcjRvYnkuYmt0LmNsb3VkZG4uY29tXCJ9Iiwic2NvcGUiOiJ0ZXN0IiwiZGVhZGxpbmUiOjE0OTcwMzIxNTQsInVwSG9zdHMiOlsiaHR0cDpcL1wvdXAtejIucWluaXUuY29tIiwiaHR0cDpcL1wvdXBsb2FkLXoyLnFpbml1LmNvbSIsIi1IIHVwLXoyLnFpbml1LmNvbSBodHRwOlwvXC8xODMuNjAuMjE0LjE5OCJdfQ=="
  }
}
```
### 返回参数
| 字段        | 类型   | 必填 | 最大长度 | 描述       | 示例值                            |
| ----------- | ------ | ---- | -------- | ---------- | --------------------------------- |
| qiniu_token | string | yes  | ??       | 七牛 token | sdfghjasdfgjhkasdgfjagsyuefgy.... |
* 错误状态码
参见 [HTTP 状态码](#http)

## ????
> 功能描述：???????????
### 请求说明
> 请求方式：????<br>
> 请求 URL ：`????`<br>
> 是否登录 ：**??**<br>
### 请求参数
| 字段 | 类型 | 必填 | 最大长度 | 描述 | 示例值 |
| ---- | ---- | ---- | -------- | ---- | ------ |
| ???? | ???? | ???? | ????     | ???? | ????   |
### 返回结果
```json
????
```
### 返回参数
| 字段 | 类型 | 必填 | 最大长度 | 描述 | 示例值 |
| ---- | ---- | ---- | -------- | ---- | ------ |
| ???? | ???? | ???? | ????     | ???? | ????   |
* 错误状态码
参见 [HTTP 状态码](#http)