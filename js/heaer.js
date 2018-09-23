$(function(){//在DOM内容加载后才执行，避免使用全局变量
  $(`<link rel="stylesheet" href="../css/header.css">`).appendTo("head");
  $.ajax({
    url:"header.html",
    type:"get",
    success: function(res){
      $(res).replaceAll("#header");
    }
  })
})