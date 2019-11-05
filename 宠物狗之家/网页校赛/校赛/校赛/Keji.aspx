<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Keji.aspx.cs" Inherits="Keji" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>柯基</title>
<link href="css/daohanglan.css" rel="stylesheet" type="text/css">
<link href="css/pingzhong.css" rel="stylesheet" type="text/css">
<link href="css/tupian.css" rel="stylesheet" type="text/css">
</head>
<body>
<nav id="menu">		
	<img id="logo" src="images/logo.jpg">
  <ul >
    <li><a href="Contact.aspx">联系</a></li>
    <li><a href="jiage.aspx">价格</a></li> 
    <li><a href="Pingzhong.aspx">推荐</a></li>
    <li><a href="Default.aspx">主页</a></li>
  </ul>
</nav>
<div class="section-1" id="container">
  <div class="carousel">
    <ul id="list">
    	<li><img src="images/1d.jpg" width="1000px" height="460px" ></a></li>
     	<li><img src="images/1a.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/1b.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/1c.jpg" width="1000px" height="460px"  ></a></li> 
  		<li><img src="images/1d.jpg" width="1000px" height="460px" ></a></li>
  		<li><img src="images/1a.jpg" width="1000px" height="460px"  ></a></li>
    </ul>
  </div>
    <div class="clear"></div>  
          <div id="buttons">   
                    <span index="1" class="on">1</span>  
                    <span index="2">2</span>  
                    <span index="3">3</span>  
                    <span index="4">4</span>    
          </div>  
  <div id="prious"><</div>  
          <div id="next">></div>  
</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	window.onload=function(){
	  var container = document.getElementById("container");
      var list = document.getElementById("list");
      var buttons = document.getElementById("buttons").getElementsByTagName('span');
      var prious = document.getElementById("prious");
      var next = document.getElementById("next");
      var index = 1;
	function animate(offset){
     var newLeft = parseInt(list.offsetLeft) + offset;   	
		$("#list").animate({left:newLeft+"px"},1000);
	 if(newLeft>=0){
		 $("#list").animate({left:-4000 +"px"},0);
     }
     if(newLeft<=-5000){	
		$("#list").animate({left:-1000+"px"},0);
     }
   }
	function buttonsshow(){
     for(var i =0; i<buttons.length;i++){
       if(buttons[i].className == 'on'){
         buttons[i].className='';
       }
     }
     buttons[index-1].className='on';
   }
   prious.onclick = function(){
	   index=index-1;
     if(index<1)
     {
       index=4;
     }
	   buttonsshow();
	   animate(1000);
   };
   next.onclick = function(){
       index=index+1;
     if(index>4)
     {
       index=1;
     }
	   buttonsshow();
	   animate(-1000);
   };
		var timer;
    function play(){
      timer=setInterval(function(){
       next.onclick();
      },5000)
    }
    play();
		function clear(){
			clearInterval(timer);
		}
    container.onmouseover=clear;
	container.onmouseout=play;
		for(var i=0; i<buttons.length; i++){	
       ( function(i){
         buttons[i].onclick=function(){
         var clickindex= parseInt(this.getAttribute('index'));
         var offset = 1000*(index-clickindex);
         animate(offset);
         index = clickindex;
         buttonsshow();
      }
   })(i);
   }
}
</script>
<div id="left-menu">
<nav id="left-menu-nav">		
  <ul >
   <a href="Keji.aspx"><li>柯基</li></a>
    <a href="Chaiquan.aspx"><li>柴犬</li></a>
    <a href="Labuladuo.aspx"><li>拉布拉多</li></a>
    <a href="Hashiqi.aspx"><li>哈士奇</li></a>
    <a href="Samoye.aspx"><li>萨摩耶</li></a>
	<a href="Jinmao.aspx"><li>金毛</li></a>
    <a href="Demu.aspx"><li>德国牧羊犬</li></a>
    <a href="Tugou.aspx"><li>中华田园犬</li></a>
  </ul>
</nav>
</div>
<div id="right">
<div>
	<h1>发展历史</h1>
	<img src="images/t1-1.jpg" class="img-left">
	<p>威尔士柯基犬为1107年由法兰德斯工人携带过来的犬种，根据其近似狐狸的头部，有人认为本犬与尖嘴犬祖先关系密切。但也有人认为是随着威尔士与瑞典贸易传至威尔士的瑞典短脚长身犬和土著犬交配，产生了柯基犬。威尔士柯基犬名字来自威尔士语,娇小之犬(corrci)的意思。本犬有潘布鲁克犬与卡迪肯犬两种变种犬。潘布鲁克犬比卡迪肯犬名气大，本犬虽然体型娇小，却一直深受高阶层人士喜爱。从12世纪的查理一世到现在的女王伊丽莎白二世，威尔士柯基犬一直是英国王室的宠物。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t1-2.jpg" class="img-right">
	<p>耳中等大小，直立，耳尖呈圆形，棕褐色眼睛中等大小，呈卵圆形。眼睛中等大小，不突出，眼圈为暗黑色，眼角清晰。嘴鼻部优美且紧凑，缺毛，为先天性特征。胸部宽度适中，向下逐渐变细，在前肢之间放松。后驱的肌肉发达且结实，但宽度略小于肩部。体躯比卡狄犬略小。</p>
	<p>被毛长度适中，绒毛层短而厚，外层被毛较长而粗糙，能抵御各种环境条件。全身毛长度不等，颈圈、胸部和肩部稍厚而长，躯干被毛平伏。前肢腹面、下腹部与后躯腹面毛比较长。被毛最好是直的。该犬容易褪毛。毛色有淡黄色短毛，金色短毛，红色短毛，黄褐色和白色短毛  。
	</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t1-3.jpg" class="img-left">
	<p>本性友好，勇敢大胆，既不胆怯也不凶残，性格温和。</p>
	<p>精力旺盛，容易训练，很快适应家居生活，会成为孩子们的好朋友。但易患进行性视网膜脱落，血液失调，臀部发育不良和脊椎疾病 。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t1-4.jpg" class="img-right">
	<p>每天喂饲食物的量要适度，过多过少都不利健成长。每天的饲料中，应
	含肉类及等量的各种杂粮、蔬菜、胡萝卜、等素食。要定期更换品种，以确保摄食的营养全面。</p>
	<p>柯基犬容易患眼疾，应每隔3～5天，用2%的硼酸水为它洗眼，以防止眼疾发生。还应定期为它洗澡、清除耳垢、牙垢，修剪爪子等。柯基犬无体臭，一个月洗一次澡就可以了。犬舍要选择通风、干净和干燥的地方，并每隔半个月或一个月做一次消毒处理，以防滋生细菌。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t1-5.jpg" class="img-left">
	<p>梳毛要注意顺序：由颈部开始，由前向后，自上而下顺次进行
	，即先从颈部到肩部，然后依次背、胸、腰、腹、后躯，再梳头部，最后是四肢和尾部，梳理过程中应梳完一侧再梳另一侧。</p>
	<p>梳毛的手法：梳毛应按顺毛方向快速梳拉。许多人在给长毛犬梳毛时，只梳表面的长毛而忽略了下面的细茸毛梳理。犬的底毛，细软而绵密，长期不梳理，会形成缠结，甚至会引起湿疹、皮癣或其他皮肤病。因此在对长毛犬梳理时，应一层一层地梳，还要把长毛翻起来，然后对其底毛进行梳理。</p>
	<p>梳子的种类：毛刷、弹性钢丝刷和长而疏的金属梳。毛刷只能使长毛的末端蓬松，而细茸毛却梳不到。梳理长毛犬时，毛刷、弹性钢丝刷和长而疏的金属梳应配合使用 。</p>
	</div>
	<br>
	<br>
	<div class="footer" >
	<p style="margin-left:20%;font-size:15px;">
	Copyright © 2019 ZD All Rights Reserved.</p>
	</div>
</div>
 <script type="text/javascript">
         $.fn.smartFloat = function() {
		 var position = function(element) {
		  var top = element.position().top, pos = element.css("position");
		  $(window).scroll(function() {
		   var scrolls = $(this).scrollTop();
		   if (scrolls > top) {
			if (window.XMLHttpRequest) {
			 element.css({
			  position: "fixed",
			  top: 0
			 }); 
			} else {
			 element.css({
			  top: scrolls
			 }); 
			}
		   }else {
			element.css({
			 position: pos,
			 top: top
			}); 
		   }
		  });
		 };
		 return $(this).each(function() {
		  position($(this));      
		 });
		};
		$("#left-menu").smartFloat();
	  </script>
</body>
</html>
