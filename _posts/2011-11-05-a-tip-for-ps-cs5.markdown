---
layout: post
title: ! '[小分享]关于解决Photoshop CS5打开后出现已停止工作强制退出的问题'
tags:
- Ps
- Tech_works
categorys: Design
status: publish
type: post
published: true
meta:
  _edit_last: '1'
  views: '1292'
---
最近下载了一个Dev版本的ps cs5，绿色精简版，只有300mb。但是当打开准备用的时候，发现每次启动之后都会出现Photoshop CS5已停止工作，直接给我强退了。

在网上查找了解决方法，有的说采用兼容模式xp sp2，试了不行；有点说删除user下面目录的AppData/roaming/adboe文件夹，试了也不行；又说要装vc2008，装了完全没反映。

于是只好在启动时打开进程找问题。 在任务管理器中发现一个CS5ServiceManager，每次启动ps cs5就会出现这个，一出现这个东西ps cs5就强退，于是顺藤摸瓜找到了CS5ServiceManager这个文件夹，删除，立马没有问题了。

然后试了下我的Illustrator CS5,Flash CS5,PS CS4，都没有问题，成功了。
分析下原因，可能是之前装了Adobe CS5的中文安装版，顺便安上了CS5ServiceManager这个注册验证程序。

在网上找了半天没有正确答案，希望有人搜到这里可以试试我的方法。<strong>删除C:\Program Files\Common Files\Adobe\CS5ServiceManager</strong>
只针对绿色版的，其他的完整版破解网上多了去了。另外如果有cs4、cs5.5跟我的情况一样，可以参照上面的路径删除。

用盗版可耻，等我工作了把电脑上软件都换成正版。
