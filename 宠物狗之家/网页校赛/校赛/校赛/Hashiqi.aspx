<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hashiqi.aspx.cs" Inherits="Hashiqi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>哈士奇</title>
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
    	<li><img src="images/4d.jpg" width="1000px" height="460px" ></a></li>
     	<li><img src="images/4a.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/4b.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/4c.jpg" width="1000px" height="460px"  ></a></li> 
  		<li><img src="images/4d.jpg" width="1000px" height="460px" ></a></li>
  		<li><img src="images/4a.jpg" width="1000px" height="460px"  ></a></li>
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
	<img src="images/t4-1.jpg" class="img-left">
	<p>西伯利亚雪橇犬（俄语：Сибирский хаски，英语：Siberian husky），常见别名哈士奇，昵称为二哈。西伯利亚雪橇犬体重，雄犬介于20-27公斤，雌犬16-23公斤，身高大约雄犬肩高53-58厘米，雌犬51-56厘米，是一种中型犬。</p>
	<p>西伯利亚雪橇犬是原始的古老犬种，在西伯利亚东北部、格陵兰南部生活。哈士奇名字的由来，是源自其独特的嘶哑声。哈士奇性格多变，有的极端胆小，也有的极端暴力，进入大陆和家庭的哈士奇，都已经没有了这种极端的性格，比较温顺，是一种流行于全球的宠物犬。与金毛犬、拉布拉多并列为三大无攻击性犬类，被世界各地人们广泛饲养，并在全球范围内有大量该犬种的赛事。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t4-2.jpg" class="img-right">
	<p>西伯利亚雪撬犬是和狼的血统非常近的犬种，所以外形非常的像狼，有着比大多数犬种都要厚的毛发，毛发颜色大致分为黑色、灰色、棕色（浅棕色又被称为梦幻色）、纯白色（极少）四种，当然这些颜色通常都是夹杂着白色毛发同时存在。哈士奇眼睛有纯棕、纯蓝、和一只眼睛棕一只眼睛蓝（即阴阳眼）三种颜色。哈士奇的头版，俗称脸型，通常有十字脸型、桃脸型、三把火、地中海四种。</p>
	<p>值得一提的是“蓝眼，三火”，蓝眼指的就是眼睛是蓝色的；三火指的是额头上的三道白色痕迹，看起来像三把燃烧的火苗。“蓝眼，三火”曾经一度被误认为是哈士奇的标准，其实这并不是判断哈士奇品质标准，反之蓝眼三火更是哈士奇普遍的存在，血统赛级哈士奇就极少有“蓝眼睛，三把火”的存在，多为两只褐眼。因为西伯利亚雪撬犬有着和狼非常相似的外观，所以我们所看到电影里的狼大多都是哈士奇扮演。</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t4-3.jpg" class="img-left">
	<p>哈士奇的个性很活泼温顺，几乎不会出现主动攻击人类的现象。在中国对于狗的地位，温顺友好的小哈，能让你和狗狗在周围的环境中有一定的优势，比较容易被接受。</p>
	<p>哈士奇喜欢玩耍，它能不知疲惫的和你玩上几个小时，多数情况是你累的吐舌头，它还意犹未尽，这些所带来的快乐，是无法用语言来形容的。</p>
	<p>哈士奇的热情是无以比拟的，长期会以超快的速度，撞到你的脚上，然后舔你一身的口水。对于刚到家的主人一般会毫不犹豫的扑过来。</p>
	<p>哈士奇从来不会主动朝着别的犬种嚎叫，而且遇到突发事件的时候，一般只会往主人身后躲，十足的胆小鬼。但是本性平易近人，基本从不主动招惹外人或者别的犬类。</p>
	<p>哈士奇属于群居类工作犬，跟其他狗狗的群居，它们不容易嫉妒，能在短时间内接受新伙伴。因性格温顺，有的时候会被小型犬欺负。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t4-4.jpg" class="img-right">
	<p> 幼龄时期是生长发育的主要阶段，身体增长迅速，因而必须供给充足的营养。一般出生后头3个月主要增长躯体和体重，4~6个月主要是增加体长，7个月后主要长体高。因此，应按不同的发育阶段，配制不同的口粮。断奶后的幼犬，由于生活条件的突然改变，往往显得不安，食欲不振，容易生病，这时所选的饲料要适口性好，易于消化。3个月内的幼犬每天至少 喂4次。对于食欲差的犬可采用先喂次的，后喂好的，少添勤喂的方法。先次后好可保持犬的食欲旺盛，少添勤喂可使犬总有不饱之感，不至于厌倦、挑食。4~6月龄的幼犬，食量增大，体重增加很快，每日所需饲料量也随之增多，每天至少喂3次。6月龄后的犬，每天喂2次即可——幼犬的食谱，应先按原犬主的食谱喂，逐渐转换。对3个月以内的幼犬应喂以稀饭、酸牛奶或豆浆并加入适量切碎的鱼、肉类以及切碎煮熟的青菜。为了降低饲料成本而又不影响幼犬的营养，可将猪、牛肺脏之类的脏器煮熟切碎后，与青菜、玉米面等熟食混匀后喂犬，这样既经济，犬又爱吃。 有些人认为，如给犬全部喂肉类，可使犬长得健壮，其实这是错误的做法。全吃肉类不仅不能使犬健壮，反而因消化不良，难以吸收而使多数犬发生腹泻。</p>
	<p>哈士奇在拉雪橇比赛中赛的是速度，而非力量，所以平时体能训练最主要的就是速度，每日速跑和慢跑几次是非常有必要的，在整个运动过程中，前后肢尽量的伸展对于哈士奇的形体将会有无可厚非的帮助，每日3次以上运动，每次20到30分钟为佳。建议每日一到二次的运动，每次半小时左右。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t4-5.jpg" class="img-left">
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
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
