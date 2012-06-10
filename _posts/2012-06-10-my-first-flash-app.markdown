---
layout: post
categories: 
 - Coding
title: 寒假弄的一个flash小播放器
tags:
  - 
date: 2012-06-10 16:28:15
---
<object type="application/x-shockwave-flash" data="http://imjacob.me/src/2012-06-12/Mp3Player.swf" width="800" height="619" id="dreamdu">
          <param name="movie" value=http://imjacob.me/src/2012-06-12/Mp3Player.swf" />
	  <param name="quality" value="high"/> 
         <param name="wmode" value="transparent"/>
   </object>

寒假的时候根据我之前的设计稿做了一个简单的播放器，可以根据XML读取音乐地址播放。里面花功夫最多的还是一些显示效果。不过好歹是基于面向对象的思想写的，也用到了简单工场设计模式，很好地实践了AS3的面向对象的编程方法（相对于多年之前学的AS2而言）。