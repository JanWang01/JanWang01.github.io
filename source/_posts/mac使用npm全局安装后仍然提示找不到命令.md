---
title: 解决mac版npm全局安装模块后命令不起作用
copyright: true
date: 2020-07-09 15:40:04
categories: [npm]
tags: [npm]
---

{% cq %} 解决问题时一旦心态崩了，要马上转移注意力休息，不然根本解决不了问题反而会更急躁。<br> <b>Jan</b>{% endcq %}

## 问题重现

正常使用命令安装hexo

```javascript
$ npm install -g hexo
```

<!-- more -->

bash提示安装成功

```
/Users/wangjian/bin/bin/vue -> /Users/wangjian/bin/lib/node_modules/vue-cli/bin/vue
+ vue-cli@2.9.6
added 238 packages from 205 contributors in 9.519s
```

然后执行命令运行hexo，讲道理应该是可以正常运行了，但是系统提示：

```
$ hexo server
bash: hexo: command not found
```

## 解决办法

在百度找了好久没都找到解决方法，好像遇到这个问题的很少。最后在我的不懈努力下终于找到解决办法了

在用户根目录（`/Users/wangjian/`）下，找到`.bash_profile`隐藏文件，没有就新建，有就直接修改，添加进去一个路径。

注意这个路径是从上面安装成功后提示复制下来的，每个人的不一样，总之从安装成功的提示里，复制到/bin/结束就可以了。

```
$ vi ~/.bash_profile
export PATH=$PATH:/Users/wangjian/bin/bin/:$PATH
```

更新配置文件到环境变量

```
$ source /Users/majialun/.bash_profile 
```

测试下命令有没有生效                        

```
$ hexo server
INFO  Start processing
INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.
```

命令执行成功，问题解决。