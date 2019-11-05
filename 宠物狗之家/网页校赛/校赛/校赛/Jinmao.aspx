<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jinmao.aspx.cs" Inherits="Jinmao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>金毛</title>
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
    	<li><img src="images/6d.jpg" width="1000px" height="460px" ></a></li>
     	<li><img src="images/6a.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/6b.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/6c.jpg" width="1000px" height="460px"  ></a></li> 
  		<li><img src="images/6d.jpg" width="1000px" height="460px" ></a></li>
  		<li><img src="images/6a.jpg" width="1000px" height="460px"  ></a></li>
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
	<img src="images/t6-1.jpg" class="img-left">
	<p>源自苏格兰的金毛寻回犬能够风靡世人，除了它一身金黄色的被毛吸引众生外，同时也因它们天生温驯的个性，令人对它爱不释手。要追溯金毛寻回犬的历史，大概要穿梭到1865年的时候，那时苏格兰流行打猎，因此擅于捕猎野生动物的中型犬种就大受狩猎家欢迎。</p>
	<p>其后苏格兰有一位贵族就尝试以黄色的拉布拉多寻回犬(Labrador Retmver)同现在己绝种的拉布水猎犬混合繁殖，品种经过改良后，成为了今天的金毛寻回犬。</p>
	<p>金毛寻回犬在英国风行一时，知名度不断提高，深受英国人的欢迎，1903年第一只金毛寻回犬在英国狗会正式登记，8年后英国金毛寻回犬会成立，可谓名噪英伦。其后有一些到英国旅行的游客，更把金毛寻回犬带回美国、加拿大等地，作为打猎之用。直到1932年，AKC成立了金毛寻回犬会(GRCA)，如今会员已多达数千名。50年后，金毛寻回犬在AKC犬只服从比赛中连续获得三届冠军。2001年，金毛寻回犬被AKC选为十大最受欢迎注册犬种之一，排名紧次于拉布拉多猎犬，风头可谓一时无二 。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t6-2.jpg" class="img-right">
	<p>头上眉头分明，头盖宽阔，头盖与鼻口相连。两眼间距离较宽，眼睛是暗褐色，黑且明亮。鼻子呈黑色。有强壮的上颚，完全剪状咬合。前后肢挺直力强、肌肉发达。足部呈圆形，坚挺如猫足。体型匀称，胸部厚实，水平的背腰部肌肉结实。尾部跟背部保持平行，尾端卷曲或朝背部上卷，但力度稍差 。</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t6-3.jpg" class="img-left">
	<p>性格善良友好、对主人十分忠诚。它的感情丰富，个性开朗，喜欢与小朋友玩耍，基于遗传上的特征，很喜欢运动，而且相当贪食。</p>
	<p>金毛十分聪明，极富幽默感。在正常情况下，对其他犬或人不犬叫不歧视 。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t6-4.jpg" class="img-right">
	<p>金毛幼犬四个半月大以前，不要让它自行上下楼梯，上下汽车时也要小心，若离地面太高，不要让它自行上下，要抱它上。十二个月以前，不要带着黄金幼犬跑步，如此会给尚未完全钙化的骨骼带来太大的压力。十二个月以后跑步开始时不要太远，要逐渐地加长距离。</p>
	<p>除了跑步以外，游泳也是一项很好的运动。但最好同爱犬一起下水 。在睡觉前一定要全身都擦干，特别是耳朵内一定要保持干燥以避免感染。有些金毛对盐分过敏，在海中游泳后一定要尽快地用淡水将其身上的盐分冲掉。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t6-5.jpg" class="img-left">
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
