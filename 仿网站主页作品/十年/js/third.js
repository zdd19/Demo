function scrollTxt() {
    var controls = {};
    var values = {};
    var t1 = 500;/*播放动画的时间*/
    var t2 = 3000;/*播放时间间隔*/
    controls.rollWrap = $("#roll-wrap");
    controls.rollWrapUl = controls.rollWrap.children();//ul
    controls.rollWrapLIs = controls.rollWrapUl.children();//li
    values.liNums = controls.rollWrapLIs.length;//获取li的数量
    values.liHeight = controls.rollWrapLIs.eq(0).height();//获取第一个li的高度
    values.ulHeight = controls.rollWrap.height();//获取ul的高度
    this.init = function () {//初始化
        autoPlay();//调用autoplay
        // pausePlay();
    }
    /*滚动*/
    function play() {
        controls.rollWrapUl.animate({ "margin-top": "-" + values.liHeight }, t1, function () {
            $(this).css("margin-top", "0")/*将controls.rollWrapUl的margin-top改为0*/.children()/*子元素*/.eq(0)/*第一个元素*/.appendTo($(this));/*将获得的第一个元素复制一遍置于最后*/
        });
    }
    /*自动滚动*/
    function autoPlay() {
        /*如果所有li标签的高度和大于.roll-wrap的高度则滚动*/
        if (values.liHeight * values.liNums > values.ulHeight) {
            setInterval(function () {
                play();
            }, t2);
        }
    }
    /*鼠标经过ul时暂停滚动*/
    // function pausePlay(){
    //     controls.rollWrapUl.on({
    //         "mouseenter":function(){
    //             clearInterval(si);
    //         },
    //         "mouseleave":function(){
    //             autoPlay();
    //         }
    //     });
    // }
}
new scrollTxt().init();