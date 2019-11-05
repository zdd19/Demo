<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chaiquan.aspx.cs" Inherits="chaiquan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>柴犬</title>
<link href="css/daohanglan.css" rel="stylesheet" type="text/css" />
<link href="css/pingzhong.css" rel="stylesheet" type="text/css" />
<link href="css/tupian.css" rel="stylesheet" type="text/css" />
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
    	<li><img src="images/2d.jpg" width="1000px" height="460px" ></li>
     	<li><img src="images/2a.jpg" width="1000px" height="460px"  ></li>
  		<li><img src="images/2b.jpg" width="1000px" height="460px"  ></li>
  		<li><img src="images/2c.jpg" width="1000px" height="460px"  ></li> 
  		<li><img src="images/2d.jpg" width="1000px" height="460px" ></li>
  		<li><img src="images/2a.jpg" width="1000px" height="460px"  ></li>
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
	<img src="images/t2-1.jpg" class="img-left">
	<p>原产于日本，是一种古老的品种，经长期豢养培育，养成忠实、服从、忍耐的天性。柴犬的警觉性高，平时习惯警觉地站在高处向下观望，个性机敏、独立，身体强健，动作敏捷，色泽如木柴，以前主要是被人类训练用来猎捕小动物，曾是穿梭于深山林间的狩猎好手，故称之为柴犬。柴犬外观和日本秋田犬比较好像是它的缩小版。在日本，柴犬被政府指定为“天然纪念物”。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t2-2.jpg" class="img-right">
	<p>眼睛稍呈三角形，深陷，朝着耳朵的外耳根部向上倾斜。</p>
	<p>耳朵三角形，小而且牢固地竖立，但和头及身体大小相称。</p>
	<p>嘴唇紧而黑，鼻子为黑色。</p>
	<p>前胸发育良好。</p>
	<p>四肢骨料粗壮，强健有力，站立姿势好，后肢大腿肌肉丰满  。</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t2-3.jpg" class="img-left">
	<p>柴犬性情温顺，忠实，有服从性、忍耐，朴实而雅致，灵巧机敏，英勇大胆、亲切而富有感情，这些特点共同产生一种高贵且自然美丽的：陛格。具有独立的天性。对陌生人有所保留，但对于得到它尊重的人则显得忠诚而挚爱。有时会攻击其他狗 。</p>
	<p>该犬气质良好，不会乱吠，亦能看家护院 。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t2-4.jpg" class="img-right">
	<p>驯养柴犬的要点在于要与其建立值得信赖的主仆关系。要教会它分辨好坏，只要对它充满关爱并让它的生活形成规律，柴犬将会是非常容易饲养的。 柴犬头脑聪明，生活中主人交给的任何工作都会努力去完成。运动能提高它的体能储备，应让它习惯在户外进行大运动量活动，运动量得到满足后在室内它就会很安静。柴犬适合作为孩子的游戏犬，也非常适合作为老年人的陪伴犬 [4]  。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t2-5.jpg" class="img-left">
	<p>梳毛要注意顺序：由颈部开始，由前向后，自上而下顺次进行，即先从颈部到肩部，然后依次背、胸、腰、腹、后躯，再梳头部，最后是四肢和尾部，梳理过程中应梳完一侧再梳另一侧。</p>
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
