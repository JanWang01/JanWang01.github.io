---
title: 那些年npm安装包遇到的坑
copyright: true
date: 2017-08-16 00:11:43
categories: [npm,nodejs]
tags: [npm,坑]
---
# nodejs安装与配置 #
全程参照网上教程，[传送门](http://www.jianshu.com/p/03a76b2e7e00)！这篇教程是把nodejs安装在D盘，当时我并没有多想为什么要装在D盘。因为我电脑是固态硬盘并没有分区只有一个盘，所以我就干脆把它装在了**C:\Program Files (x86)**。到后面npm install 的时候出错了，权限不够。所以每次都要以管理员权限运行，比较麻烦。如果装在D盘的话，就可以直接运行了。我当时也觉得不麻烦，但是后来用Git bash here来安装hexo的时候并不是以管理员权限运行，所以一直安装不了，又不能使用管理员权限运行。后面又重新安装在了D盘才解决问题。
<!--more-->
``` bash
	Jan@MiWiFi-R1CL MINGW64 /c/JanBlog
	$ npm install hexo -g
```

虽然解决了这个小坑，但是又有个大坑等着我了。npm安装依赖超慢，装了一个下午都没装的hexo。上网百度了一下，大家都说用淘宝镜像源cnpm速度非常快。但是的话有时候会有莫名其妙的问题出现，所以当时没有马上用cnmp来安装，又继续寻找，可是都没有其他的好办法。当时还以为是npm版本太高，不稳定，然后立马又换了个稳定版的，并没有什么卵用。难道是vpn不给力，于是乎又换了个vpn，然而还是没什么卵用。折腾了一天，都没弄完。无奈之下，使用了[cnpm](https://npm.taobao.org/)，速度贼快！

``` bash
	$ npm install -g cnpm --registry=https://registry.npm.taobao.org
```

# hexo #
两个不同的电脑上传hexo博客到github老是报错，找了很久终于发现[解决方案](http://blog.csdn.net/gdutxiaoxu/article/details/53573399)。

**注意：**git每次根据邮箱自动生成的密钥都是不一样的，所以每次都要上传的github账号上面才能实现，hexo g 直接提交到版本库。

# 新版npm使用方式，速度更快，更稳定

[通过cnpm下载的包为什么那么凌乱](https://www.zhihu.com/question/53341824)

[使用阿里巴巴国内镜像但不使用cnpm](http://blog.csdn.net/rongbo_j/article/details/52106580)

> cnpm 在安装包时使用的是 cnpm/npminstall 。项目的 readme 已经写明了细节，仔细阅读即可。简单来说，npminstall 下的 node_modules 目录采用和 npm 官方 client 不一样的布局，主要是为了最大限度提高安装速度。

``` bash
	$ npm install <registry-name> --registry https://registry.npmjs.org
	$ npm config set registry https://registry.npmjs.org  
	$ npm config list #查看更新后的config设置
```

