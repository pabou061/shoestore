

  
function overImage(a,b)
	{
	$(a).hover(function()
	{
	$(this).find(b).css({"opacity":0.9,"-webkit-transform":"scale(1,1)","-ms-transform":"scale(1,1)","-moz-transform":"scale(1,1)","transform":"scale(1,1)"});
	
	},function()
	{
	$(this).find(b).css({"opacity":0,"-webkit-transform":"scale(0,0)","-ms-transform":"scale(0,0)","-moz-transform":"scale(0,0)","transform":"scale(0,0)"});
	}
	)
	
	}
	$(document).ready(function()
	{
	
	overImage("div.picture-info","div.shoe-overlay")
	$("#owl-team").owlCarousel({ 
    autoPlay: 3000, //Set AutoPlay to 3 seconds
    items : 5,
    itemsDesktop : [1199,4],
    itemsDesktopSmall : [979,4],
    stopOnHover : true,
    pagination : false,
    
});

overImage("div.shoe-picture-detail-wrap","div.shoe-overlay")
$("div.team").hover(function()
{

$(this).find("div.over").css("height","100%")
},function()
{
$(this).find("div.over").css("height","0px")
}
)	
	}
	)
	/*preloader*/
	$(window).load(function() {
    $(".shoe-preloader").delay(100).fadeOut(600);
  });
	(function($) {
      window.scrollReveal = new scrollReveal();
    })();


       $(function() {
            $('a[href*="#"]:not([href="#"])').click(function() {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html, body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });


function changecolor(self) {
    console.log(self);
    $(self).css("background-color", self.dataset.bgcolor);
};


$(function (){
    $(".shoesize").on("click",function(){
        $(".shoequantity").empty();
    console.log(this.dataset.quantity);
    $(".shoequantity").append("</br><label> Quantity </label></br>");
    var select = $('<select class="input-select" name="cart[quantity]" id="cart_quantity"/>');

    for (var i=1; i <= this.dataset.quantity; i++) { 
        select.append("<option value="+i+" >"+i+"</option");
    }
    select.append("</select>");
  $(".shoequantity").append(select);

  });
});

$(document).ready(function(){    
    $(".circle-color-select").each(function(){
        changecolor(this);
    });


});
