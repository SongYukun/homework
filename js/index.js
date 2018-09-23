/*广告轮播*/
$(function(){
	var count = 0;
	var $li = $(".banner_list>ul>li");
	$(".next").click(function(){
		count++;				
		if(count == $li.length){
			count =0;
		}
		$li.eq(count).fadeIn().siblings().fadeOut();
		$(".banner_icon i").eq(count).addClass("btn_act").siblings().removeClass('btn_act');
	//	console.log(count);
	});
	$(".prve").click(function(){
		count--;
		if(count == -1){
			count = $li.length-1;
		}
		console.log(count);
		$li.eq(count).fadeIn().siblings().fadeOut();
		$(".banner_icon i").eq(count).addClass("btn_act").siblings().removeClass('btn_act');
	});
	$(".banner_icon i").mouseenter(function(){
		$(this).addClass('btn_act').siblings().removeClass("btn_act");
		$li.eq($(this).index()).fadeIn().siblings().fadeOut();
		count = $(this).index();
	});
});


/*
$("#tvplay>ul:has([data-toggle=tab])")
.on("click","[data-toggle=tab]",function(){
  var $tar=$(this);
  if(!$tar.parent().is("#tvplay>div.tvplaylf>div.tvplaybody")){
    $tar.parent().addClass("#tvplay>div.tvplaylf>div.tvplaybody")
      .siblings().removeClass("#tvplay>div.tvplaylf>div.tvplaybody");
    var id=$tar.attr("data-tab");
    $(id).addClass("#tvplay>div.tvplaylf>div.tvplaybody")
      .siblings().removeClass("#tvplay>div.tvplaylf>div.tvplaybody");
  }
})*/