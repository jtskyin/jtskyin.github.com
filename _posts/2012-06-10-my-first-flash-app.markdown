---
layout: post
category: Coding
title: 寒假弄的一个flash小播放器
tags:
  - Flash
date: 2012-06-10 16:28:15
---
寒假的时候根据我之前的设计稿做了一个简单的播放器，可以根据XML读取音乐地址播放音乐（只能算是个壳儿）。


里面花功夫最多的还是一些显示效果，比如滚动条，播放状态等，没有用现成的flex UI。


虽然现在想着这些都是皮毛，不过好歹是基于面向对象的思想写的，也用到了简单工场设计模式，很好地实践了AS3的面向对象的编程方法（相对于多年之前学的AS2而言）。对于as3甚至整个编程语言都有了比较大的了解，怎么着也不能算门外汉了。

接下来一年的目标之一是做一个Flash AIR的游戏，最好是能移植到IOS上去的那种。


p.s.另外其实五月份左右的时候，参加公司毕业生的一个游戏小组，做了一个iOS游戏，负责了大部分的UI和原画，不过由于我不在深圳，跟他们沟通比较困难，这个游戏最终效果并不如我愿。希望接下来能做一个自己满意的。

<object  classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  type="application/x-shockwave-flash" id="dreamdu">
<param name="quality" value="high"/> 
<param name="base" value="." />
<param name="play" value="true" />
<param name="WMode" value="transparent" />
<embed src="http://imjacob.me/src/2012-06-12/Mp3Player.swf" base="." width="800" height="700"  TYPE="application/x-shockwave-flash" pluginspace="http://www.macromedia.com/go/getflashplayer" wmode="transparent">  </embed> 
 </object>
