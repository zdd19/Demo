<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Samoye.aspx.cs" Inherits="Samoye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>萨摩耶</title>
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
    	<li><img src="images/5d.jpg" width="1000px" height="460px" ></a></li>
     	<li><img src="images/5a.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/5b.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/5c.jpg" width="1000px" height="460px"  ></a></li> 
  		<li><img src="images/5d.jpg" width="1000px" height="460px" ></a></li>
  		<li><img src="images/5a.jpg" width="1000px" height="460px"  ></a></li>
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
<div class="jieshao">
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
	<img src="images/t5-1.jpg" class="img-left">
	<p>萨摩耶犬是因西伯利亚牧民族萨莫耶德人而得名，原产位于俄罗斯北极地区，起源于17世纪。原始的萨摩耶犬是由如今定居在乌拉尔山以东的极地地区的萨莫耶德游牧部落所培育的。在19世纪末，有毛皮商人将此犬输入美国及欧洲等地。而后该犬传到英国，因其雪白的毛色深得人们喜爱。20世纪初期，北极探险的热潮中，此犬因其天生的特性为探险者提供许多帮助，而获得殊荣 。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t5-2.jpg" class="img-right">
	<p>直立的耳朵很厚，呈三角形，尖端略圆。两耳分的较开。眼睛颜色深为佳，两眼凹陷，间距大，杏仁形，下眼睑向耳基部倾斜。鼻子颜色有黑色、棕色、肝褐色，鼻的颜色有时随年龄和气候改变。嘴唇多数是黑色，嘴角上翘。牙齿强壮，剪状咬合。背部直，中等长度，肌肉丰满。脚大而长，比较平，似野兔的足，趾稍分开；趾尖呈拱形肉垫厚而硬，趾之间有保护的毛，脚圆形或似猫足。尾巴比较长，自然下垂时可达 跗关节部，尾部被毛长而厚，当犬处于戒备状态时，尾上翘高于背部或位于背部一侧，休息时下垂。</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t5-3.jpg" class="img-left">
	<p>萨摩耶犬很聪明，学习东西很快，但程度也有很大差异，要注意不同情况区别对待。</p>
	<p>它的性情温和，对主人忠诚，适应性强。警惕，充满活力，待人友善，不保守，不胆怯，不多疑，只是进攻性不强 。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t5-4.jpg" class="img-right">
	<p>把萨摩耶犬当做人的伙伴和朋友，才能耐心地饲养、护理和调教它。不能对它喜怒无常，忽冷忽热。</p>
	<p>萨摩耶犬不具备人的智力，不能进行逻辑思维、不懂人的语言，萨摩耶犬只能通过记忆来进行学习。因此，在训练时也要有耐心，要反复重复一个口令或一个手势，以逐步帮助其建立起某种行为习惯，不能操之过急，要求太高。</p>
	<p>人和萨摩耶犬感情上的联系是人和萨摩耶犬共同生活结为伴侣的前提条件。因此，主人与萨摩耶犬要多接触，对它多关心爱护，要友好相待。</p>
	<p>在同人的接触中，萨摩耶犬的好学程度，适应能力是有差异的。因此，要注意不同情况区别对待，不能抛弃和虐待落后者。</p>
	<p>在饲养过程中，必须研究，了解所养萨摩耶犬的素质、特性、习性，以便根据其特点并按照人的需要来发展和塑造它。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t5-5.jpg" class="img-left">
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
