// Ian Farb, no date Available from https://codepen.io/ianfarb/pen/sxbvk [Accessed 29 April 2017]
$(document).ready(function(){

  $("#small").click(function(event){
    event.preventDefault();
    $("h1").animate({"font-size":"24px"});
    $("h2").animate({"font-size":"16px"});
    $("h3").animate({"font-size":"14px"});
    $("p").animate({"font-size":"12px", "line-height":"20px"});
    $("dd").animate({"font-size":"12px", "line-height":"20px"});
    $("dt").animate({"font-size":"12px", "line-height":"20px"});


  });

  $("#medium").click(function(event){
    event.preventDefault();
    $("h1").animate({"font-size":"36px"});
    $("h2").animate({"font-size":"24px"});
    $("h3").animate({"font-size":"20px"});
    $("p").animate({"font-size":"16px", "line-height":"25px"});
    $("dd").animate({"font-size":"16px", "line-height":"25px"});
    $("dt").animate({"font-size":"16px", "line-height":"25px"});

  });

  $("#large").click(function(event){
    event.preventDefault();
    $("h1").animate({"font-size":"48px"});
    $("h2").animate({"font-size":"30px"});
    $("h3").animate({"font-size":"28px"});
    $("p").animate({"font-size":"24px", "line-height":"30"});
    $("dd").animate({"font-size":"24px", "line-height":"30"});
    $("dt").animate({"font-size":"24px", "line-height":"30"});

  });

  $( "a" ).click(function() {
   $("a").removeClass("selected");
  $(this).addClass("selected");

 });

});
