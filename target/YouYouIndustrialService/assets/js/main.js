"use strict";

//Rage Template
//Designerd by: #
jQuery(document).ready(function($) {

	//for Preloader

	$(window).load(function() {
		$("#loading").fadeOut(500);
	});

	/*---------------------------------------------*
	 * Mobile menu
	 ---------------------------------------------*/
	$('#navbar-menu').find('a[href*="#"]:not([href="#"])').click(function() {
		if(location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
			if(target.length) {
				$('html,body').animate({
					scrollTop: (target.offset().top - 80)
				},1000);
				if($('.navbar-toggle').css('display') != 'none') {
					$(this).parents('.container').find(".navbar-toggle").trigger("click");
				}
				return false;
			}
		}
	});

	/*---------------------------------------------*
	 * WOW
	 ---------------------------------------------*/

	var wow = new WOW({
		mobile: false // trigger animations on mobile devices (default is true)
	});
	wow.init();

	// magnificPopup

	$('.popup-img').magnificPopup({
		type: 'image',
		gallery: {
			enabled: true
		}
	});

	// $('.video-link').magnificPopup({
	// 	type: 'iframe',
	// 	mainClass: 'mfp-fade',
	// 	iframe: {
	// 		markup: '<div class="mfp-iframe-scaler">' +
	// 			'<div class="mfp-close"></div>' +
	// 			'<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>' +
	// 			'</div>', // HTML markup of popup, `mfp-close` will be replaced by the close button
    //
	// 		patterns: {
	// 			youtube: {
	// 				index: 'youtube.com/',
	// 				id: 'v=',
	// 				src: '//www.youtube.com/embed/%id%?autoplay=1'
	// 			}
	// 		},
	// 		srcAction: 'iframe_src',
	// 	}
	// });

	// slick slider active Home Page Tow
	$(".testimonial_slid").slick({
		dots: false,
		infinite: false,
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		prevArrow: "<i class='fa fa-angle-left nextprevleft'></i>",
		nextArrow: "<i class='fa fa-angle-right nextprevright'></i>",
		autoplay: true,
		autoplaySpeed: 2000
	});

	//    featured slider
	$('.featured_slider').slick({
		centerMode: true,
		dote: true,
		centerPadding: '60px',
		slidesToShow: 3,
		speed: 1500,
		index: 2,
		responsive: [{
				breakpoint: 768,
				settings: {
					arrows: false,
					centerMode: true,
					centerPadding: '40px',
					slidesToShow: 1
				}
			},
			{
				breakpoint: 480,
				settings: {
					arrows: false,
					centerMode: true,
					centerPadding: '40px',
					slidesToShow: 1
				}
			}
		]
	});

	//---------------------------------------------
	// Counter 
	//---------------------------------------------

	$('.statistic-counter').counterUp({
		delay: 10,
		time: 2000
	});

	//---------------------------------------------
	// Scroll Up 
	//---------------------------------------------
	$(window).scroll(function() {
		if($(this).scrollTop() > 600) {
			$('.scrollup').fadeIn('slow');
		} else {
			$('.scrollup').fadeOut('slow');
		}
	});
	$('.scrollup').click(function() {
		$("html, body").animate({
			scrollTop: 0
		}, 1000);
		return false;
	});

	//About us accordion 

	$("#faq_main_content").collapse({
		accordion: true,
		open: function() {
			this.addClass("open");
			this.css({
				height: this.children().outerHeight()
			});
		},
		close: function() {
			this.css({
				height: "0px"
			});
			this.removeClass("open");
		}
	});

	//Team Skillbar active js

	jQuery('.teamskillbar').each(function() {
		jQuery(this).find('.teamskillbar-bar').animate({
			width: jQuery(this).attr('data-percent')
		}, 6000);
	});
	//点击显示微信公众号图片 
	//openWeixinQRCode();
	//粒子效果
    $(".overlay").jParticle({
        background: "transparent",
        color: "#218868",
        particlesNumber:120,
        particle: {
            color: "white",
            minSize: 2,
            maxSize: 4,
            speed: 120
        }
    });
    //图标放大效果
    $('.service_item').hover(function(){
        $(this).find('i').css({"font-size":"3.5rem","color":"#ff6863"});
    },function(){
        $(this).find('i').css({"font-size":"3rem","color":"#797979"});
    });
    //搜索框关闭事件
	$('.close-search').click(function () {
		$('#search-input').val('');
    });
	//返回上一页
	$('#back-last-page').click(function () {
        history.go(-1);
    });
	//搜索事件
	$('#search-input').keydown(function (e) {
		if(e.keyCode==13){
			 window.location.href="../../dynamic/dynamic.jsp";
		}
    });
});
/*新增函数*/
function openWeixinQRCode() {
    $('#chatting_our').hover(function() {
        $('.weixin_qrcode').show();
    },function(){
        $('.weixin_qrcode').hide();
    });
    $('#chatting_eamil').hover(function() {
        $('.chat_email').show();
    },function(){
        $('.chat_email').hide();
    });
}

function loadCompanyLocation() {
	var sContent = " <br>地址:";
	var map = new BMap.Map("map_canvas");
	var point = new BMap.Point(121.497982, 31.384589); //可以通过百度地图坐标拾取系统 http://api.map.baidu.com/lbsapi/getpoint/index.html
	var marker = new BMap.Marker(point);
	var infoWindow = new BMap.InfoWindow(sContent);
	map.centerAndZoom(point, 15);
	map.addOverlay(marker);
	marker.openInfoWindow(infoWindow);
	infoWindow.redraw();
}

function openFunctionAndService() {
	//alert(1);
	$('.sec-animate0').addClass('animated zoomInLeft');
	$('.sec-animate1').addClass('animated zoomInUp');
	$('.sec-animate2').addClass('animated zoomInRight');
	setTimeout(function() {
		$('.sec-animate0').removeClass('zoomInLeft');
		$('.sec-animate1').removeClass('zoomInUp');
		$('.sec-animate2').removeClass('zoomInRight');
	}, 1000);
}

function openCompanyBlog() {
	$('.sec-animate3').addClass('animated slideInLeft');
	$('.sec-animate4').addClass('animated slideInDown');
	$('.sec-animate5').addClass('animated slideInRight');
	setTimeout(function() {
		$('.sec-animate3').removeClass('slideInLeft');
		$('.sec-animate4').removeClass('slideInDown');
		$('.sec-animate5').removeClass('slideInRight');
	}, 1000);
}


function getDate1() {
	var oDate = new Date();
	var y = oDate.getFullYear();
	var m = oDate.getMonth() + 1;
	var d = oDate.getDate();
	var h = oDate.getHours();
	var mins = oDate.getMinutes();
	var s = oDate.getSeconds();
	return y + '-' + (m < 10 ? ('0' + m) : m) + '-' + (d < 10 ? ('0' + d) : d) + ' ' + (h < 10 ? ('0' + h) : h) + ':' + (mins < 10 ? ('0' + mins) : mins) + ':' + (s < 10 ? ('0' + s) : s);
}
//设置是否显示头部功能列表
function  setShowHeader() {
	$('.normal-li').css('display','none');
	$('.return-index').css('display','block');

}
function  setHideHeader() {
    $('.normal-li').css('display','block');
    $('.return-index').css('display','none');
}
//获取url参数
function GetQueryString(name)
{
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if(r!=null)return  unescape(r[2]); return null;
}