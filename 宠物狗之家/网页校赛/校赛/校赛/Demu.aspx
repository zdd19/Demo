<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demu.aspx.cs" Inherits="Demu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>德牧</title>
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
    	<li><img src="images/7d.jpg" width="1000px" height="460px" ></a></li>
     	<li><img src="images/7a.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/7b.jpg" width="1000px" height="460px"  ></a></li>
  		<li><img src="images/7c.jpg" width="1000px" height="460px"  ></a></li> 
  		<li><img src="images/7d.jpg" width="1000px" height="460px" ></a></li>
  		<li><img src="images/7a.jpg" width="1000px" height="460px"  ></a></li>
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
	<img src="images/t7-1.jpg" class="img-left">
	<p>1890年，德国育犬家史蒂芬尼斯与马艾尔先生开始改良繁育德国古老的牧羊犬——艾尔沙奇亚犬。据说，施特凡尼茨在上个世纪末产生了培养优秀工作犬的想法，为此，他跑遍了德国去搜寻能够实现他自己愿望的牧羊犬，在这个过程中，他经常会使用到一只名字叫Greif（格里夫）的牧羊犬作为种犬来进行他的繁殖实践，而这只名字叫Greif（格里夫）的牧羊犬就是一只白色牧羊犬。戎马出身的冯斯蒂法尼茨当时梦想着培育出一种既不咄咄逼人，但又不胆怯怕生的犬。他首先在自己的桌子上描绘出了他心目中的牧羊犬，然后才用多种优良犬进行配种，直至达到理想的原型为止 。</p>
	</div>
	<div>
	<h1>形态特征</h1>
	<img src="images/t7-2.jpg" class="img-right">
	<p>德国牧羊犬体形适中，有轻微的延展性；强壮，有强健和发达的肌肉，以及强壮的骨骼；通体紧凑和谐。重要的比例数据普遍的看法是，雄性犬的身高在60—65厘米之间，雌性犬的身高在55—60厘米之间。体长必须超过体高，超出幅度在10%—17%</p>
	</div>
	<div>
	<h1>性格特征</h1>
	<img src="images/t7-3.jpg" class="img-left">
	<p>德国牧羊犬的性格是非常温顺的，追溯狗狗的发展史，也能够了解到狗狗由始至终都是非常善良的，绝对的服从性和忠诚。</p>
	<p>德国牧羊犬有着非常敏锐的感官，而且德国牧羊犬的追踪能力特别强，这也就是为什么它在军界和警界，被广泛运用的原因。为了我们社会的和谐作出了很大的贡献。另一方面，德国牧羊犬如果，接受正规的训练，那么就有可能会参与到缉毒，搜救以及追踪等工作当中去。</p>
	<p>德国牧羊犬还有自信，大胆的性格特点。如果你足够了解自己家的德牧，那么你将会发现，德国牧羊犬表面上看起来是非常冷漠的，不太容易跟他亲近，或者是建立深厚的友情，但是事实上，狗狗却是非常平易近人的，性格是比较稳定的。</p>
	</div>
	<div>
	<h1>饲养方法</h1>
	<img src="images/t7-4.jpg" class="img-right">
	<p>正在哺乳的德国牧羊犬的仔犬，在晚秋、冬季、早春要注意保温，室内保持干燥，使用红外烘烤灯等。产房周围环境应尽量保持清静，防止仔犬被母犬挤压而死。其次要及时对仔犬补奶，抓好开食关，并逐渐断奶。2-3月龄的德国牧羊犬幼犬需耐心细致地管理，这跟幼犬的体质发育关系极大，对神经系统的正常发育也有直接影响。因此，适当地带犬运动锻炼，对强健骨骼、肌肉组织，改善内脏器官机能，促进新陈代谢，适应不同气候、环境条件等均有良好作用。免疫接种和预防性驱虫，是保证犬健康成长的关键。适宜的免疫程序为45天时第一次免疫，以10天间隔再连续免疫2次，3月龄时注射狂犬疫苗，幼犬每月驱虫1次。德国牧羊犬的幼犬的培育宜在2-6月龄时进行，要求达到体质健壮，发育正常，四肢有力，跑跳迅速自如。胆大灵活，能适应较复杂的环境，兴奋，爱活动，衔取欲强，依恋性好，注意力集中，不随意离开主人，不随地拣吃东西，听从主人口令。</p>
	</div>
	<div>
	<h1>梳理犬毛</h1>
	<img src="images/t7-5.jpg" class="img-left">
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
