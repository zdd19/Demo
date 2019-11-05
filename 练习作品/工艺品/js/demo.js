$(document).ready(function() {
  var t = document.documentElement.scrollTop ||document.body.scrollTop;
  //Initiliaze
  itemShow         = 8;
  indexedItemShow  = itemShow - 1
  itemList         = $('#portfolio-item');
  itemWrapper      = $('#portfolio');
  rotation         = ['flipped-vertical-bottom', 'flipped-vertical-top', 'flipped-horizontal-left', 'flipped-horizontal-right'];
  navigation       = $('#navigation a');

  //Populate items
  for( var i = 0; i < itemShow; i++ ) {
  
    itemImage    = itemList.children('li:eq(' + i + ')').children('img');
    itemSrc      = itemImage.attr('src');
    itemAlt      = itemImage.attr('alt');
    item         = '<div style="background:url(' + itemSrc + ');background-size:cover"> <span>' + itemAlt + '</span></div>'; 
    itemWrapper.append(item);
  }
  
  
  navigation.on('click', function(e) {
    
    e.preventDefault();

    navigation.removeClass('selected');
    $(this).addClass('selected');
    
    page = $(this).attr('data-page');

    for( var i = 0; i <= indexedItemShow; i++ ) {

      random     = Math.floor( Math.random() * ( 3 - 0 + 1 ) );
      animation  = rotation[random];
      
      item       = itemWrapper.children('div:eq(' + i + ')');

      item.addClass('animated ' + animation);

      window.setTimeout(function (index) {
        return function () {

          indexReal    = (page == 1) ? index : (index + (page - 1)) ;
          itemHost     = indexReal + (indexedItemShow * (page - 1));

          itemImage    = itemList.children('li:eq(' + itemHost + ')').children('img');
          itemSrc      = itemImage.attr('src');
          itemAlt      = itemImage.attr('alt');
          itemCurrent  = itemWrapper.children('div:eq(' + index + ')');
          itemCurrent.css({background:'url('+itemSrc+')',backgroundSize:'cover'});
            
            itemCurrent.children('span').text(itemAlt);
        };
      } (i), 500);
      
      item.on('transitionend webkitTransitionEnd MSTransitionEnd oTransitionEnd', function() { 
        $(this).removeClass();
      });
    }
  });
  $('.honeycomb-cell').eq(0).click(function(){
    $('.swiper-pagination-bullet').eq(0).click();
    $('.bg-content-st').css({opacity:'0'})
    $('.thumbnail').css({backgroundImage:'url(./img/1.jpg)'})
  })
  $('.honeycomb-cell').eq(1).click(function(){
    $('.swiper-pagination-bullet').eq(1).click();
    $('.bg-content-st').css({opacity:'0'})
    $('.thumbnail').css({backgroundImage:'url(./img/2.jpg)'})
  })
  $('.honeycomb-cell').eq(2).click(function(){
    $('.swiper-pagination-bullet').eq(2).click();
    $('.bg-content-st').css({opacity:'0'})
    $('.thumbnail').css({backgroundImage:'url(./img/3.jpg)'})
  })
  $('.honeycomb-cell').eq(3).click(function(){
    $('.swiper-pagination-bullet').eq(3).click();
    $('.bg-content-st').css({opacity:'0'})
    $('.thumbnail').css({backgroundImage:'url(./img/4.jpg)'})
  })
  $('.honeycomb-cell').eq(4).click(function(){
    $('.swiper-pagination-bullet').eq(4).click();
    $('.bg-content-st').css({opacity:'0'})
    $('.thumbnail').css({backgroundImage:'url(./img/5.jpg)'})
  })
  $('.honeycomb-cell').eq(5).click(function(){
    $('.swiper-pagination-bullet').eq(5).click();
    $('.bg-content-st').css({opacity:'0'})
    $('.thumbnail').css({backgroundImage:'url(./img/6.jpg)'})
  })
  $('.honeycomb-cell').eq(6).click(function(){
    $('.swiper-pagination-bullet').eq(6).click();
    $('.bg-content-st').css({opacity:'0'})
    $('.thumbnail').css({backgroundImage:'url(./img/7.jpg)'})
  })
  $('.thumbnail').click(function(){
    $('.an-bg').css({width:'90%',height:'90%'})
  })
  $(document).bind('click', function (e) {
    var e = e || window.event; //浏览器兼容性 
    var elem = e.target || e.srcElement;
    while (elem) { //循环判断至跟节点，防止点击的是div子元素 
        if (elem.className == 'thumbnail' || elem.className == 'an-bg') {
            return;
        }
        elem = elem.parentNode;
    }
    
    $('.an-bg').css({width:'25%',height:'25%' });//点击的不是div或其子元素 
});
});
window.onscroll=function(){
  var t = document.documentElement.scrollTop ||document.body.scrollTop;
  if(t>1073){
    setTimeout(() => {
      $('.part1before').css({transform:'scaleX(1)'})
    }, 400); 
  }
}