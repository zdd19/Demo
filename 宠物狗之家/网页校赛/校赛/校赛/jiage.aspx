<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiage.aspx.cs" Inherits="jiage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>价格</title>
<style type="text/css">
	.biao-name{
		font-size: 48px;
	}
	table{
		border: 5px solid rgba(0,0,0,0.6);
        margin-left:3%;
        margin-right:3%;
	}
    #all{
        margin-top:3%;
    }
	.biaoge-first-line{
		font-size: 20px;
		width: 100%;
		height:50px;
	}

	.neirong{
		text-align: center;
		height: 50px;
	}
    #clear{
        clear:both;
    }
</style>
<link href="css/jiage.css" rel="stylesheet" type="text/css" />
<link href="css/daohanglan.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
 $(document).ready(function(){
    selectMenu(document.getElementById('td0'),'tab0');
  })
  function selectMenu(oThis,tabID)
  {
    	for(i = 0; i<8; i++){
        	document.getElementById("tab" + i).style.display = "none";
    	}
    	document.getElementById(tabID).style.display = "";
    	
  }
</script>
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
<div id="left-menu">
<nav id="left-menu-nav">		
  <ul >
    <a href="#" id="td0" class="on" onclick="selectMenu(this,'tab0')"><li>柯基</li></a>
    <a href="#" id="td1" onclick="selectMenu(this,'tab1')"><li>柴犬</li></a>
    <a href="#" id="td2" onclick="selectMenu(this,'tab2')"><li>拉布拉多</li></a>
    <a href="#" id="td3" onclick="selectMenu(this,'tab3')"><li>哈士奇</li></a>
    <a href="#" id="td4" onclick="selectMenu(this,'tab4')"><li>萨摩耶</li></a>
	<a href="#" id="td5" onclick="selectMenu(this,'tab5')"><li>金毛</li></a>
    <a href="#" id="td6" onclick="selectMenu(this,'tab6')"><li>德国牧羊犬</li></a>
    <a href="#" id="td7" onclick="selectMenu(this,'tab7')"><li>中华田园犬</li></a>
  </ul>
</nav>
</div>
<div id="clear"></div>
<div id="all">
<div class="bioage">
<table id="tab0" cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">柯基</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>听到铃声就会吃饭</td>
			<td>曾获得比赛选美冠军</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table>
</div>
<div class="bioage">
<table id="tab1" style="display: none;" cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">柴犬</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table>
</div>
<div class="bioage">
<table id="tab2" style="display: none;"cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">拉布拉多</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>听到铃声就会吃饭</td>
			<td>曾获得比赛选美冠军</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table></div>
<div class="bioage">
<table id="tab3" style="display: none;"cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">哈士奇</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table></div>
<div class="bioage"><table id="tab4" style="display: none;"cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">萨摩耶</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>听到铃声就会吃饭</td>
			<td>曾获得比赛选美冠军</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table></div>
<div class="bioage"><table id="tab5" style="display: none;"cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">金毛</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table></div>
<div class="bioage"><table id="tab6" style="display: none;"cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">德国牧羊犬</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>听到铃声就会吃饭</td>
			<td>曾获得比赛选美冠军</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table></div>
<div class="bioage"><table id="tab7" style="display: none;"cellspacing="1">
	<tbody>
		<tr class="biao-name">
			<th colspan="10">中华田园犬</th>
		</tr>
		<tr class="biaoge-first-line" >
			<th style="width:9%;">年龄</th>
			<th style="width:10%;">卖家身份</th>
			<th style="width:9%;">地点</th>
			<th style="width:9%;">联系方式</th>
			<th style="width:9%;">价格</th>
			<th style="width:14%;">疫苗接种</th>
			<th style="width:14%;">健康状况</th>
			<th style="width:9%;">病史</th>
			<th style="width:9%;">习惯</th>
			<th style="width:9%;">备注</th>
		</tr>
		<tr class="neirong">
			<td>1岁</td>
			<td>犬舍</td>
			<td>武汉</td>
			<td>159888811111</td>
			<td>3500</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3岁</td>
			<td>犬舍</td>
			<td>上海</td>
			<td>159888813215</td>
			<td>10000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>3个月</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813212</td>
			<td>6000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>鼻子曾经发过炎</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>9个月</td>
			<td>宠物店</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>8个月</td>
			<td>犬舍</td>
			<td>杭州</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>5岁</td>
			<td>家庭繁殖</td>
			<td>杭州</td>
			<td>159888813221</td>
			<td>3000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>工作繁忙，以无精力抚养</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>温岭</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>宠物店</td>
			<td>青岛</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
		<tr class="neirong">
			<td>1个月</td>
			<td>家庭繁殖</td>
			<td>北京</td>
			<td>159888813211</td>
			<td>5000</td>
			<td>全部接种</td>
			<td>健康</td>
			<td>无病史</td>
			<td>无</td>
			<td>无</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<div class="footer" >
	<p style="color: white;text-align: center;margin-top:3%;">
	Copyright © 2019 ZD All Rights Reserved.</p>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
</html>
