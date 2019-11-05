<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pingzhong.aspx.cs" Inherits="Pingzhong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>品种</title>
<link href="css/tedian.css" rel="stylesheet" type="text/css">
<link href="css/daohanglan.css" rel="stylesheet" type="text/css">
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
<div class="line-up">
	<div class="line-text"><h2>宠物狗品种</h2></div>
	<div class="line-up-image">
	<a href="Keji.aspx">
    <div class="line-all">
		  <div class="line-up-dog"><img src="images/1.jpg" width="280px" height="260px">
		</div>
      <div class="line-up-text">
        <p class="dog-name">柯基</p>
		  <p class="country">英国</p>
      </div>
	</div>
	</a>
    
	<a href="Chaiquan.aspx">
    <div class="line-all">
		<div class="line-up-dog"><img src="images/2.jpg" width="280px" height="260px"></div>
      <div class="line-up-text">
        <p class="dog-name">柴犬</p>
		  <p class="country">日本</p>
      </div>
	</div>
		</a>
	<a href="Labuladuo.aspx">	
    <div class="line-all">
		  <div class="line-up-dog"><img src="images/3.jpg" width="280px" height="260px"></div>
      <div class="line-up-text">
        <p class="dog-name">拉布拉多</p>
		  <p class="country">加拿大</p>
      </div>
	</div>
		</a>
    <a href="Hashiqi.aspx">	
    <div class="line-all">
		  <div class="line-up-dog"><img src="images/4.jpg" width="280px" height="260px"></div>
      <div class="line-up-text">
       <p class="dog-name">哈士奇</p>
		  <p class="country">西伯利亚</p>
      </div>
	</div>
		</a>
	<a href="Samoye.aspx">	
    <div class="line-all">
		  <div class="line-up-dog"><img src="images/5.jpg" width="280px" height="260px"></div>
      <div class="line-up-text">
       <p class="dog-name">萨摩耶</p>
		  <p class="country">俄罗斯</p>
      </div>
	</div>
		</a>
	<a href="Jinmao.aspx">	
    <div class="line-all">
		  <div class="line-up-dog"><img src="images/6.jpg" width="280px" height="260px"></div>
      <div class="line-up-text">
       <p class="dog-name">金毛</p>
		  <p class="country">英国</p>
      </div>
	</div>
	</a>
	<a href="Demu.aspx">	
    <div class="line-all">
		  <div class="line-up-dog"><img src="images/7.jpg" width="280px" height="260px"></div>
      <div class="line-up-text">
       <p class="dog-name">德国牧羊犬</p>
		  <p class="country">德国</p>
      </div>
	</div>
		</a>
	<a href="Tugou.aspx">	
    <div class="line-all">
		  <div class="line-up-dog"><img src="images/8.jpg" width="280px" height="260px"></div>
      <div class="line-up-text">
       <p class="dog-name">中华田园犬</p>
		  <p class="country">中国</p>
      </div>
	</div>
		</a>
	</div>
	<br>
	<br>
	<div class="footer">
	<p style="text-align: center;line-height: 100px;">
	Copyright © 2019 ZD All Rights Reserved.</p>
	</div>
	</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    window.onload = function () {
        var carousel = document.getElementById("canner");
        var banner = document.getElementById("banner");
        function animate(offset) {
            var newLeft = parseInt(banner.offsetLeft) + offset;
            $("#banner").animate({ left: newLeft + "px" }, 800);
            if (newLeft <= -1470) {
                $("#banner").animate({ left: 0 + "px" }, 0);
            }
        }
        var timer;
        function play() {
            timer = setInterval(function () {
                animate(-210);
            }, 1000)
        }
        play();
        function clear() {
            clearInterval(timer);
        }
        carousel.onmouseover = clear;
        carousel.onmouseout = play;

    }
</script>
</body>
</html>
