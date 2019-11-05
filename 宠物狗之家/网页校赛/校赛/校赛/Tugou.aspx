<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tugou.aspx.cs" Inherits="Tugou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>中华田园犬</title>
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
    	<li><img src="images/8d.jpg" width="1000px" height="460px" ></a></li>
     	<li><img src="images/8a.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/8b.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/8c.jpg" width="1000px" height="460px"  ></a></li> 
  		<li><img src="images/8d.jpg" width="1000px" height="460px" ></a></li>
  		<li><img src="images/8a.jpg" width="1000px" height="460px"  ></a></li>
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
	<img src="images/t8-1.jpg" class="img-left">
	<p>中华田园犬是中国本土最古老的犬种之一，曾被尊称为“国犬”。</p>
	<p>中国土狗大多生存于中国农村、郊外，多为放养型且在原生犬种中占多数比例。部分学者认为中华田园犬与日本柴犬在遗传上的确存在联系，是同一犬类祖先在日本与中国分别培育出来的。</p>
	<p>现今绝大部分犬类的历史发源地都被证明是中国或者说的古代的中国。由中国科学院昆明动物研究所研究员、中科院院士张亚平带领的研究小组完成的论文《走出东亚南部：全世界家犬的起源历史》发表在《细胞研究》的最新研究称：包括吉娃娃、松狮、秘鲁无毛犬在内的全世界的家犬，都起源于中国南方等东亚南部地区，自灰狼进化而来。东亚南部地区的家犬的基因组拥有全世界最丰富的遗传多样性。</p>
	<p>中国土狗大多生存于中国农村、郊外，多为放养型且在原生犬种中占多数比例。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t8-2.jpg" class="img-right">
	<p>头部特征更加接近于其祖先狼的外貌，嘴尖，嘴短，额平。</p>
	<p>耳位高，耳小且直立或半直立，半直立的耳朵是向头部正前方半下垂。</p>
	<p>尾巴向上翘起，特别在行走时会高高翘起，以金钱尾和镰刀尾为主。</p>
	<p>当站立静止时，后腿明显很平直并垂直于地面，踝关节弯曲不明显。</p>
	<p>身体匀称而紧凑；中等大小，身长与肩高比约成1:1，加上后腿平直并几乎垂直于地面使整个身体成正方形。</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t8-3.jpg" class="img-left">
	<p>性格比较温顺，不容易主动攻击人类，可以群居，地域性强，容易饲养，忠诚度高，不易生皮肤病。其广泛用于农村的看家护院和早期的狩猎。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t8-4.jpg" class="img-right">
	<p>中国土狗是肉食动物，所以在喂养时，需要在饲料中配制较多的动物蛋白，肉食，辅以素食成分，以保证狗的正常发育和健康。有时也吃草，但吃得很少，偶尔也吐掉，狗吃草不是为了充饥，而是为了清胃，主要因狗的肠胃结构独特。狗的胃很大，约占腹腔的2/3，而肠子却很短，约占腹腔的1/3，所以狗基本上是用胃来消化食物和吸收营养，容易消化肉类食物，不易消化像树叶、草等有“筋”的东西。虽然犬属于食肉动物，但生存艰难时犬可以依靠蔬菜和谷物这类食物活下去。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t8-5.jpg" class="img-left">
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
