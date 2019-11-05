<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>主页</title>
<style type="text/css">
		body{
			font-family: 微软雅黑;
			}
		#bg{
			background-image: url(images/p1.jpg);
			background-repeat: no-repeat;
			background-attachment: fixed;
		}
#slogan1,#slogan2,#slogan3{
	position:relative;
	height:500px;
}
#slogan1 h1{
	text-align:center;
}
#slogan1 h2{
    text-indent:2em;
}
h1{
	text-transform:uppercase;
	color: white;
}
h2{
	margin-top: 3%;
	font-size:32px;
	font-weight:100;
	color: white;
}

#slogan2{
	padding-top:200px;
	
}
#slogan2 h1{
    margin-left:45%;
	display:inline-block;
	padding-top:20px;
	padding-bottom:20px;
	border-top:5px solid #FFF;
	border-bottom:5px solid #FFF;
	background-color: rgba(0,0,0,.5);
 	transition: all linear 1s;
}
#slogan1 h2{
    margin-left:5%;
    margin-right:5%;
}
#slogan2 h2{
    text-indent:2em;
    margin-left:5%;
    margin-right:5%;
	margin-top:5%;
	padding-top:0;
	font-size:26px;
	background-color: rgba(0,0,0,.5);
 	transition: all linear 1s;
}

#slogan1{
	opacity:0;
	-webkit-transition:all 2s .5s;
	transition:all 2s .5s;
}
#slogan1.show{
	opacity:.8;
}


#slogan2{
	-webkit-transform-style: preserve-3d;
}
#slogan2 h1{
	opacity:0;
	-webkit-transform:scaleY(0);
	transform:scaleY(0);
	-webkit-transition:all 1s;
	transition:all 1s;
	-webkit-backface-visibility:hidden;
}
#slogan2 h2{
	opacity:0;
	-webkit-transform:scaleX(0);
	transform:scaleX(0);
	-webkit-transition:all 1s .5s;
	transition:all 1s .5s;
	-webkit-backface-visibility:hidden;
}
#slogan2 h1.scrolled{
	opacity:1;
	-webkit-transform:scaleY(1);
	transform:scaleY(1);
}
#slogan2 h2.scrolled{
	opacity:1;
	-webkit-transform:scaleX(1);
	transform:scaleX(1);
}

#slogan3{
	-webkit-transform-style: preserve-3d;
}
#slogan3 h1{
	opacity:0;
	-webkit-transform:translateX(-200px);
	transform:translateX(-200px);
	-webkit-transition:all 1.5s;
	transition:all 1.5s;
	-webkit-backface-visibility:hidden;
}
#slogan3 h2{
	opacity:0;
	-webkit-transform:translateX(200px);
	transform:translateX(200px);
	-webkit-transition:all 1.5s .25s;
	transition:all 1.5s .25s;
	-webkit-backface-visibility:hidden;
}
#slogan3 h1.scrolled, #slogan3 h2.scrolled{
	opacity:1;
	-webkit-transform:translateX(0px);
	transform:translateX(0px);
}

#slogan3 h1{
	position:absolute;
	font-size:72px;
	left:10%;
	top:60px;
	background-color: rgba(0,0,0,.5);
 	transition: all linear 1s;
}
#slogan3 h2{
    text-indent:2em;
	position:absolute;
	font-size:24px;
	left:10%;
	width:650px;
	top:200px;
	background-color: rgba(0,0,0,.5);
 	transition: all linear 1s;
}
#slogan3 img{
	position:absolute;
	left:60%;
	top:100px;
}
#top{
	box-sizing:border-box;
	position:fixed;
	z-index:5000;
	right:50px;
	bottom:50px;
	width:60px;
	height:60px;
	background:rgba(255,255,255,.2);
	border:1px solid rgba(255,255,255,.6);
	text-align:center;
	padding-top:25px;
	color:#FFF;
	font-weight:500;
	text-transform:uppercase;
	cursor:pointer;
}
#top{
	opacity:0;
	transition:all 1s;
	-webkit-transition:all 1s;
}
#top::after{
	content:'';
	width:0;
	height:0;
	border-width:8px;
	border-style:solid;
	border-color:transparent transparent #FFF transparent;
	position:absolute;
	top:5px;
	left:50%;
	margin-left:-8px;
}
#top.show{
	opacity:1;
}
.mengban1{
	background-color: rgba(0,0,0,.5);
 	position: absolute;
 	bottom: 0;
 	transition: all linear 1s;
}
	</style>
<link href="css/daohanglan.css" rel="stylesheet" type="text/css" />
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
<div id="bg">
	<div id="slogan1">
		<div class="mengban1">
		<h1>Friend</h1>
		<h2>狗狗很忠诚，他不会背叛你，认定你是主人便是一辈子的主人，哪怕你对他并不好，永远不会变，不会因为你的穷富，你的美丑而对你另眼相看。狗狗很贴心，他能读懂你的喜怒哀乐，并默默地在你身边陪你度过最快乐亦或者最悲伤的时光。</h2>
		</div>
      </div>
<div id="slogan2">
  <h1>HISTORY</h1>
  <h2>狗驯化的历史是狗和人类之间古老的伙伴关系。这种伙伴关系最初可能是基于人类对放牧和狩猎的需求，对早期警报系统的需求，以及对食物来源的需求，除了我们今天许多人所知道和热爱的伙伴关系之外。作为回报，狗得到了陪伴、保护、庇护和可靠的食物来源。</h2>
</div>
<div id="slogan3">
  <h1>RELATIONSHIP</h1>
  <h2>人类和狗一直以来有一种“说不清道不明”的亲密关系，似乎有某种纽带把这两种动物联系在了一起。
在所有动物中，我们会发现，狗是最能觉察我们的情感的，狗甚至可以通过观察我们的表情来判断我们是生气还是高兴。这个特点是很令人惊奇的，因为从人类诞生起，我们所接触的那么多动物中，有很多高智商动物（如灵长类），他们也能做很多让我们惊叹的行为，但是那么多动物里，只有狗最为独特。</h2>
</div>
<div class="footer" >
	<p style="color: white;text-align: center;">
	Copyright © 2019 ZD All Rights Reserved.</p>
</div>
</div>
<div id="top">Top</div>
<script type="text/javascript">
var nav=document.getElementById("top");
console.log(nav);
window.onscroll = function(){
	//var scrollTop = document.body.scrollTop;
    var scrollTop = document.documentElement.scrollTop;
	console.log(scrollTop);
    if(scrollTop > 200){
        nav.className = "show";
    }else{
        nav.className = "";
    }
}
nav.onclick = function(){
	//document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}
</script>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var windowHeight = $(window).height();
	var slogan2_y = $('#slogan2').offset().top;
	var slogan3_y = $('#slogan3').offset().top;
	var buffer = 200;
	$('#slogan1').addClass('show');
	$(window).scroll(function(){
			pos = $(window).scrollTop();
			if(pos > slogan2_y-buffer){
				$('#slogan2 > h1').addClass('scrolled');
				$('#slogan2 > h2').addClass('scrolled');
			}
			if(pos < slogan2_y-windowHeight+buffer){
				$('#slogan2 > h1').removeClass('scrolled');
				$('#slogan2 > h2').removeClass('scrolled');
			}
			if(pos > slogan3_y-buffer){
				$('#slogan3 > h1').addClass('scrolled');
				$('#slogan3 > h2').addClass('scrolled');
				$('#slogan3 > img').addClass('scrolled');
			}
			if(pos < slogan3_y-windowHeight+buffer){
				$('#slogan3 > h1').removeClass('scrolled');
				$('#slogan3 > h2').removeClass('scrolled');
				$('#slogan3 > img').removeClass('scrolled');
			}
	})
});
</script>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
