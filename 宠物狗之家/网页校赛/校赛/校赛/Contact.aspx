<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>联系我们</title>
<link href="css/daohanglan.css" rel="stylesheet" type="text/css">
<style type="text/css">
	body{
		font-family: 微软雅黑;
	}
	.text{
		margin: 5% 10% 5% 10%;
	}
	div.text h1{
		margin-bottom:15px;
		text-align: center;
	}
	div p{
		line-height:1.5em;
		text-indent:2em;
        font-size:20px;
	}
	div.contact{
		width: 100%;
		height:480px;
		/*background: #242649;*/
        background:#808080;
	}
	.hello{
		margin-top: 5%;
		margin-left: 10%;
		float: left;
	}
	.hello h1{
		color: white;
	}
	.hello p{
		color: white;
		margin-top: 10%;
		font-size: 20px;
	}
.form form {
	margin-top: 5%;
	margin-right: 10%;
	float: right;
	width: 300px;
    text-align: right;
}

.form input[type="text"] {
	float: left;
    width: 100%;
    background: none;
    outline: none;
    font-size: .9em;
    padding: .5em;
    margin-bottom: 1em;
    border: solid 1px rgba(255,255,255,.8);
    color:#c0c0c0;
}

.form textarea {
    resize: none;
    width: 100%;
    background: none;
    font-size: .9em;
    outline: none;
    padding: .5em;
    border: solid 1px rgba(255,255,255,.8);
    min-height: 150px;
    -webkit-appearance: none;
    color:#c0c0c0;
}

.form input[type="submit"] {
    border: none;
    outline: none;
    color: #FFF;
    padding: .5em 1.5em;
    font-size: .9em;
    font-weight: 600;
    margin: 0.5em 0 0 0;
    -webkit-appearance: none;
    background: #1CD5B5;
    border-radius: 5px;
}

    .form input[type="submit"]:hover {
        background-color: #F51F23;
        transition: 1s all;
    }
    input:input-placeholder{
        color:rgba(0,0,0,0.9);
    }
    /* WebKit browsers */
    input::-webkit-input-placeholder,textarea::-webkit-input-placeholder  {
        color:#c0c0c0;
        opacity:1;
    }
/* Mozilla Firefox 4 to 18 */
    input:-moz-placeholder,textarea::-webkit-input-placeholder {
        color:#c0c0c0;
        opacity:1;
    }
/* Mozilla Firefox 19+ */
input::-moz-placeholder,textarea::-webkit-input-placeholder  {
    color:#c0c0c0;
        opacity:1;
}
/* Internet Explorer 10+ */
input:-ms-input-placeholder,textarea::-webkit-input-placeholder  {
    color:#c0c0c0;
        opacity:1;
}

.form input[type="text"] {
    font-size: .8em;
}

.form textarea {
    font-size: .8em;
}

</style>
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
<div class="text">
<h1>
	关于我与宠物狗的一段故事
</h1>
<p>
在过去的时光里，我也许是一个什么都不懂的小孩子，还是见到什么都觉得新奇，可通过了很长的时间，我变了，我变得不再幼稚，我再也不是那时候的小屁孩子了！我长大了，我越来越懂事了。但是这一些有可能来的有一些太突然了，我有些接受不了，所以我又来回顾，又沉浸在那幼稚的回忆中。小时的我是一个不知疲惫，到处乱跑的孩子，爸爸妈妈也经常为我担心，可正是因为这些，我才变得独立，变得更加坚强！	
</p>
<p>
那时的事也许有些我还记得，可有些我去一点记忆都没有了。但是我还是有几件事令我记忆犹新。
</p>
<p>
记得小时候有一次，老姨从外面带回来一只很可爱的小狗，老姨说是一个朋友让帮忙养的，过几天再拿回去。它全身都是黑色的毛发，只有两只眼睛的上方有两个白色的斑点，（现在我才知道那种狗是哈士奇的一种）我给它起名叫笨笨，可是说它笨，它就是笨，来我们家几天了也没怎么吃东西。有一次我好意地给他了一块儿骨头，可怜的它因为太饿了，“狼吞虎咽”起来。终于，它肯适应我们家了！我带着它一会儿跑到那儿，一会儿又跑回来，非常听话。但是他有时候也是很调皮的。有一天，我带着它出去玩的时候，一不注意，给它跑丢了。我心急如焚，到处找它，可还是没有找到。第二天，他竟然自己跑回来了。很快，我们到了分别的时候，当时我非常伤心，不停地哭，可是它还是被带走了。
</p>
<p>
自从我搬到了新家，我就认识了下面洗车家的小孩。因为她家养了很多小狗，这些小狗都很可爱，很惹人喜爱，所以我也喜欢上了它们。
</p>
<p>
她们家养的狗都很小，而且还很可爱，我很喜欢。每天上学、放学我路过她家时，小狗总是朝我欢快的叫，我总要停下来，或去逗它们玩，或去抚摸它们那光滑的皮毛，这时，我的心头总会涌起一阵欢乐。
</p>
<p>
她家先养了一只名叫美美的黄毛狐狸狗，然后这只狗怀了几只小狗，看它那挺着大肚子走路的样子，感觉真好玩。最后，这只狗被送走了，我十分伤心，这一切只能成为美好的回忆了。不过，我很快就忘记了这段不好的回忆——又来了一只白狐狸狗，它叫白白，白白比美美稍大一点，长得也很乖巧，我很快就和它成为了好朋友。
</p>
<p>
不久，小狗就又换了——来了两只贵宾狗，一只叫皮皮，我们都叫它“赖皮”，它好像也对这个称呼很满意，我一叫它，它就飞奔过来，扑到我的怀里。另一只叫熊猫，它小得还不到30厘米。它特别胖，走起来一扭一扭的，肚皮都蹭着地了，走起路来一直呜呜叫，好像在埋怨自己太胖了，又好像觉的肚皮被蹭疼了。
</p>
<p>
在后来，又来了两只白色狐狸狗——贝贝和欢欢，它们好像一对双胞胎，稍不注意就会弄混。现在她们家都有4条狗，如果一不注意，他们就会打闹起来，所以只好把它们各关在一个笼子里。只有贝贝和欢欢受到特殊待遇，专门住在主人为它们特制的笼子里，这笼子长2米，宽1米，两只小狗住显得绰绰有余，非常宽敞。
</p>
<p>
这几只小狗每逢周日，我总会和它一起玩耍、嬉戏，和它们在一起，我总觉得特别快乐。后来因为学业的原因，渐渐与他们疏远了，最后他们搬家了，我也就跟他们失去了联系。
</p>
</div>
<div class="contact">
<div class="hello">
<h1>Say Hello To Me</h1>

<p>我是一个在校大学生，</p>
<p>因宠物狗的笑容，</p>
<p>而喜欢上了他们，</p>
<p>如果你也喜欢宠物狗，</p>
<p>那就和我联系吧！</p>
</div>
  <div class="form">
	    <form id="form2" runat="server">
		<input type="text" placeholder="姓名" required="">
		<input type="text" placeholder="邮箱" required="">
		<input type="text" placeholder="职业" required="">
		<input type="text" placeholder="联系方式" required="">
		<textarea placeholder="留言" required=""></textarea>
		<input type="submit" value="SEND">
		</form>
  </div>
</div>
<div class="footer" style="background:#808080 ">
	<p style="color: white;text-align: center;">
	Copyright © 2019 ZD All Rights Reserved.</p>
	</div>
</body>
</html>
