function overImage(e,t){$(e).hover(function(){$(this).find(t).css({opacity:.9,"-webkit-transform":"scale(1,1)","-ms-transform":"scale(1,1)","-moz-transform":"scale(1,1)",transform:"scale(1,1)"})},function(){$(this).find(t).css({opacity:0,"-webkit-transform":"scale(0,0)","-ms-transform":"scale(0,0)","-moz-transform":"scale(0,0)",transform:"scale(0,0)"})})}function changecolor(e){console.log(e),$(e).css("background-color",e.dataset.bgcolor)}$(document).ready(function(){overImage("div.picture-info","div.shoe-overlay"),$("#owl-team").owlCarousel({autoPlay:3e3,items:5,itemsDesktop:[1199,4],itemsDesktopSmall:[979,4],stopOnHover:!0,pagination:!1}),overImage("div.shoe-picture-detail-wrap","div.shoe-overlay"),$("div.team").hover(function(){$(this).find("div.over").css("height","100%")},function(){$(this).find("div.over").css("height","0px")})}),$(window).load(function(){$(".shoe-preloader").delay(100).fadeOut(600)}),function(){window.scrollReveal=new scrollReveal}(),$(function(){$('a[href*="#"]:not([href="#"])').click(function(){if(location.pathname.replace(/^\//,"")==this.pathname.replace(/^\//,"")&&location.hostname==this.hostname){var e=$(this.hash);if(e=e.length?e:$("[name="+this.hash.slice(1)+"]"),e.length)return $("html, body").animate({scrollTop:e.offset().top},1e3),!1}})}),$(function(){$(".shoesize").on("click",function(){$(".shoequantity").empty(),console.log(this.dataset.quantity),$(".shoequantity").append("</br><label> Quantity </label></br>");for(var e=$('<select class="input-select" name="cart[quantity]" id="cart_quantity"/>'),t=1;t<=this.dataset.quantity;t++)e.append("<option value="+t+" >"+t+"</option");e.append("</select>"),$(".shoequantity").append(e)})}),$(document).ready(function(){$(".circle-color-select").each(function(){changecolor(this)})});