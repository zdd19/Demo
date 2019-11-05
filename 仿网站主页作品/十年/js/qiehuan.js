var abc = 0;
var i = 0;
var move = true;//因为鼠标滚轮的特性，所以需在外面先判断为真假，否则循环会执行两次
var scroll = function (e) {
    var e = e || window.event;
    if (e.wheelDelta) {
        abc = e.wheelDelta;
    }
    if (e.detail) {
        abc = e.detail;
    }
    console.log(abc)
    if (move == true) {
        move = false;//避免因为鼠标滚轮的特效而将循环执行2次
        if (abc < 0) {//鼠标向下滚动
            i++;
            if (i > 3) {//图片总共为四张，可移动的距离为300vh
                i = 3;
            }
        }
        if (abc > 0) {//鼠标向上滚动
            i--;
            if (i < 0) {
                i = 0;
            }
        }
        
        console.log(i);
        $('.all').css("top", -i * 100 + "vh");//all类的top向下移动i*100vh的高度
        $('.right a').removeClass("active");//清除actice类
        $('.right a').eq(i).addClass('active');//为当前图片顺序对应的span添加active类
        setTimeout(function () {
            move = true;
        }, 1000);//在一秒后将move的值变更为true，即使用户在1秒内输入多次的鼠标滚轮命令，因为在循环内已将move的值变更为了false，所以循环不会再次执行
    }

}
if (document.addEventListener) {
    document.addEventListener('DOMMouseScroll', scroll, false);
}
window.onmousewheel = document.onmousewheel = scroll;
$(function () {
    $(".right a").click(function () {//点击事件
        i = $(this).parent().index();
        console.log($(this).index());
        $(".all").css("top", -i * 100 + "vh");//all类的top向下移动i*100vh的高度
        $(".right a").removeClass("active");//清除所有actice类
        $(".right a").eq(i).addClass("active");//为当前图片顺序对应的span添加active类
    })
})
