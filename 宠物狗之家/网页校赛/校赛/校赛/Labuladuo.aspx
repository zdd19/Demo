<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Labuladuo.aspx.cs" Inherits="Labuladuo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>拉布拉多</title>
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
    	<li><img src="images/3d.jpg" width="1000px" height="460px" ></a></li>
     	<li><img src="images/3a.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/3b.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/3c.jpg" width="1000px" height="460px"  ></a></li> 
  		<li><img src="images/3d.jpg" width="1000px" height="460px" ></a></li>
  		<li><img src="images/3a.jpg" width="1000px" height="460px"  ></a></li>
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
	<img src="images/t3-1.jpg" class="img-left">
	<p>拉布拉多寻回猎犬并不像它的名字那样来自拉布拉多地区，而是来自纽芬兰。</p>
	<p>在纽芬兰因为沉重的犬税，拉布拉多犬逐渐消失。根据英国的限制法，这沉重的犬税实际上停止了向英国进口犬。此后，许多拉布拉多犬和其他种类的猎犬互相交配繁殖，但幸运的是拉布拉多犬的独有特性占优势。最后，育种者希望停止这种相互的交配繁殖，制订出一个标准，以便阻止这种犬与其他猎犬杂交。</p>
	<p>拉布拉多寻回猎犬作为一种单独的犬种是在1903年首先由英国养犬俱乐部承认的。在英国，没有一只拉布拉多犬能成为展会的冠军，因为它没有参赛资格，除非它有工作执照能明确证明它在这一领域也有资格。在美国，拉布拉多犬成为主要的受训犬和寻回猎犬。1931年狩猎和育种者们成立了拉布拉多猎犬俱乐部，同时在展示比赛中展示他们繁育的犬并取得了明显的成功 。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t3-2.jpg" class="img-right">
	<p>头部清爽，而且头部线条分明，宽阔的头顶使脑袋看起来颇大。耳朵适度垂挂在头部两侧，略靠后。眼睛大小适中，颜色多为棕色、黄色或黑色，神态十分善解人意。颈部长度适中，不太突出。肋骨扩展良好，两肩较长稍具斜度。胸部厚实宽度和深度良好。前脚自肩膀以下至地面挺直，趾头密实拱起。后脚踝适度弯曲，四肢长度适中，与身体各部位均衡配合 。</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t3-3.jpg" class="img-left">
	<p>拉布拉多寻回犬十分聪明，警觉，善解人意。</p>
	<p>性格温顺，平稳，既不迟钝也不过于活跃。</p>
	<p>对人友善，对人忠诚。喜欢玩，特别喜欢和别人做游戏 。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t3-4.jpg" class="img-right">
	<p>拉布拉多犬的饲养与其他犬种大体类似，可每要喂它一些狗粮或饼干，再配以清水。拉布拉多犬是容易发胖的犬种，所以应适量喂其肉类食物，另外要保证每天让拉布拉多犬进行2～3个小时的运动。它们除了需要足够的食物和饮水之外，更需要主人的关心与呵护，所以要想拥有一个健康快乐的拉拉，你应抽空多陪它，给它以特殊的关爱 。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t3-5.jpg" class="img-left">
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
