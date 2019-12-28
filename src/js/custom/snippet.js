/* Libs
=========================================================================================
 //=../../bower_components/jquery/jquery-1.11.2.min.js
//= ../../bower_components/bootstrap/js/bootstrap.min.js
//= ../../bower_components/corenav/dist/coreNavigation-1.1.3.min.js
//= ../../bower_components/parallax/parallax.min.js
//= ../../bower_components/magnific-popup/jquery.magnific-popup.min.js
//= ../../bower_components/mixitup/mixitup.min.js
//= ../../bower_components/scroll2id/PageScroll2id.min.js
//= ../../bower_components/waypoints/waypoints.min.js
//= ../../bower_components/animate/animate-css.js
//= ../../bower_components/jqBootstrapValidation/jqBootstrapValidation.js
//= ../../bower_components/equalHeight/jquery.equalheights.min.js
//= ../../bower_components/owl-carousel/owl.carousel.min.js


=========================================================================================
*/

/* Custom
===========================*/
//= custom/svg.js
//= custom/custom.js
//= custom/skins.js


$(document).ready(function() {
    $(".section-head h2, .section-head p").animated("fadeIn");
    $(".info-item-wrap").animated("zoomIn");
    $(".slider .slide").animated("fadeIn");
    $(".homesect.section_8 .forms").animated("fadeInRight");
    $(".homesect.section_8 .p").animated("fadeIn");
 /*
 <link rel="stylesheet" href="bower_components/lightgallery/dist/css/lightgallery.min.css">
 <link rel="stylesheet" href="bower_components/lightgallery/dist/css/lg-transitions.min.css">
 ======================================================================================== */
 <div id="js-lightgallery">
    <a href="http://placehold.it/700x500" data-sub-html="#caption2">
        <img src="http://placehold.it/100x50" alt="">
    </a>
    <a href="http://placehold.it/700x500/333">
        <img src="http://placehold.it/100x50/333" alt="">
    </a>
    <a href="http://placehold.it/700x500/ccc">
        <img src="http://placehold.it/100x50/ccc" alt="">
    </a>
</div>
/*=========================================================================================
<script src="bower_components/lightgallery/dist/js/lightgallery.min.js"></script>
<script src="bower_components/lightgallery/dist/js/lg-thumbnail.min.js"></script>
<script src="bower_components/lightgallery/dist/js/lg-fullscreen.min.js"></script>
=========================================================================================*/
*/
    $("#js-lightgallery").lightGallery({
        mode: "lg-slide-skew-rev",
        download: false,
        thumbContHeight: 50
    });
    
/*=====================================================================================*/
	$(".auth_buttons").click(function() {
		$(this).next().slideToggle();
	});
	$(".main_mnu_button").click(function() {
		$(".maian_mnu ul").slideToggle();
	});
/*=====================================================================================*/
	//Таймер обратного отсчета
	//Документация: http://keith-wood.name/countdown.html
	//<div class="countdown" date-time="2015-01-07"></div>
	var austDay = new Date($(".countdown").attr("date-time"));
	$(".countdown").countdown({until: austDay, format: 'yowdHMS'});
/*=====================================================================================*/
	//Попап менеджер FancyBox
	//Документация: http://fancybox.net/howto
	//<a class="fancybox"><img src="image.jpg" /></a>
	//<a class="fancybox" data-fancybox-group="group"><img src="image.jpg" /></a>
	$(".fancybox").fancybox();
/*=====================================================================================*/
	//Навигация по Landing Page
	//$(".top_mnu") - это верхняя панель со ссылками.
	//Ссылки вида <a href="#contacts">Контакты</a>
	$(".top_mnu").navigation();
/*=====================================================================================*/
	//Добавляет классы дочерним блокам .block для анимации
	//Документация: http://imakewebthings.com/jquery-waypoints/
	$(".block").waypoint(function(direction) {
		if (direction === "down") {
			$(".class").addClass("active");
		} else if (direction === "up") {
			$(".class").removeClass("deactive");
		};
	}, {offset: 100});
/*=====================================================================================*/
	//Плавный скролл до блока .div по клику на .scroll
	//Документация: https://github.com/flesler/jquery.scrollTo
	$("a.scroll").click(function() {
		$.scrollTo($(".div"), 800, {
			offset: -90
		});
	});
/*=====================================================================================*/
	//Каруселька
	//Документация: http://owlgraphic.com/owlcarousel/
	var owl = $(".carousel");
	owl.owlCarousel({
		items : 3,
		autoHeight : true
	});
	owl.on("mousewheel", ".owl-wrapper", function (e) {
		if (e.deltaY > 0) {
			owl.trigger("owl.prev");
		} else {
			owl.trigger("owl.next");
		}
		e.preventDefault();
	});
	$(".next_button").click(function() {
		owl.trigger("owl.next");
	});
	$(".prev_button").click(function() {
		owl.trigger("owl.prev");
	});
/*=====================================================================================*/
	//Кнопка "Наверх"
	//Документация:
	//http://api.jquery.com/scrolltop/
	//http://api.jquery.com/animate/
	$("#top").click(function () {
		$("body, html").animate({
			scrollTop: 0
		}, 800);
		return false;
	});
/*=====================================================================================*/
	//Аякс отправка форм
	//Документация: http://api.jquery.com/jquery.ajax/
	$("#callback").submit(function() {
		$.ajax({
			type: "GET",
			url: "mail.php",
			data: $("#callback").serialize()
		}).done(function() {
			alert("Спасибо за заявку!");
			setTimeout(function() {
				$.fancybox.close();
			}, 1000);
		});
		return false;
	});
/*=====================================================================================*/


/*============================== Smooth scroll to Plans Block==========================/*
<a href="#" class="btn btn_red btn_intro" id="js-get-started">get started</a>
<nav class="nav" id="js-nav">
    <a href="#js-header" class="nav__item nav__item_special">Hosting</a>
    <a href="#js-domain" class="nav__item nav__item_special">Domains</a>
    <a href="#js-features" class="nav__item">features</a>
    <a href="#js-plans" class="nav__item">plans</a>
    <a href="#js-testimonials" class="nav__item">testimonials</a>
    <a href="#js-contacts" class="nav__item">contacts</a>
</nav>
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CSS:
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

.nav{
    width: 590px;
    display: inline-block;
    vertical-align: middle;
    text-transform: uppercase;
    text-align: center;
}

.nav-container{
    border-bottom: 1px solid #424348;
    padding: 20px 0;
}

.nav-container.fixed{
    background-color: #2c3039;
    padding: 5px 0;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 200;
}

.nav__item{
    margin: 0 15px;
    -webkit-transition: color .2s;
    -moz-transition: color .2s;
    transition: color .2s;
    text-decoration: none;
    font-size: 12px;
    color: #fff;
}

.nav__item:hover{
    color: #e84c3d;
}

.btn{
    -webkit-transition: all .3s;
    -moz-transition: all .3s;
    transition: all .3s;
    display: inline-block;
    background: none;
    border: 0;
    text-decoration: none;
    text-transform: uppercase;
    line-height: 1.1;
}

.btn:focus{
    outline: none;
}

.btn:hover{
    cursor: pointer;
}

.btn_blue{
    width: 220px;
    padding: 16px;
    background: #2c3039;
    color: #fff;
    font-size: 14px;
    font-weight: bold;
}

.btn_blue:hover{
    background: #3e4350;
}

.btn_full{
    width: 100%;
}

.btn_intro{
    margin-bottom: 30px;
}

.btn_login{
    font-size: 12px;
    color: #fff;
    border: 1px solid #e84c3d;
    padding: 12px 30px;
}

.btn_login:hover{
    background: #e84c3d;
}

.btn_red{
    width: 220px;
    padding: 16px;
    background: #e84c3d;
    color: #fff;
    font-size: 14px;
    font-weight: bold;
}

.btn_red:hover{
    background: #e12c1b;
}

.btn_search{
    width: 20%;
}

.btn_sm{
    width: auto;
}

.btn_subscribe{
    width: 80px;
    float: left;
    padding-top: 13px;
    padding-bottom: 13px;
}

=====================================================================================*/

    $("#js-get-started").on("click", function(e) {

        e.preventDefault();
        var plansOffset = $("#js-plans").offset().top;

        $("html, body").animate({
            scrollTop: plansOffset
        }, 500);

    });

/* =============================== Fixed header when scroll  ============================
<!-- Header -->
<div class="header" id="js-header">

    <div class="nav-container" id="js-nav-container">
        <div class="container">

            <div class="logo-container">
                <a href="#" class="logo">
                    <img src="i/logo.png" width="56" height="36" alt="">
                    <div class="slogan">nine cloud <span class="text-red">hosting</span></div>
                </a>
            </div>

            <nav class="nav" id="js-nav">
                <a href="#js-header" class="nav__item nav__item_special">Hosting</a>
                <a href="#js-domain" class="nav__item nav__item_special">Domains</a>
                <a href="#js-features" class="nav__item">features</a>
                <a href="#js-plans" class="nav__item">plans</a>
                <a href="#js-testimonials" class="nav__item">testimonials</a>
                <a href="#js-contacts" class="nav__item">contacts</a>
            </nav>

            <a href="#js-login-modal" class="btn btn_login pull-right js-show-modal">login</a>

        </div><!-- /.container -->
    </div><!-- /.nav-container -->
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CSS:
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

.header{
    background: #2c3039 url("../i/header.jpg") center top no-repeat;
}

.heart-icon{
    display: inline-block;
    vertical-align: baseline;
    width: 11px;
    height: 10px;
    margin-right: 3px;
    background: url("../i/hearth-icon.png") no-repeat;
}

.nav{
    width: 590px;
    display: inline-block;
    vertical-align: middle;
    text-transform: uppercase;
    text-align: center;
}

.nav-container{
    border-bottom: 1px solid #424348;
    padding: 20px 0;
}

.nav-container.fixed{
    background-color: #2c3039;
    padding: 5px 0;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 200;
}

.nav__item{
    margin: 0 15px;
    -webkit-transition: color .2s;
    -moz-transition: color .2s;
    transition: color .2s;
    text-decoration: none;
    font-size: 12px;
    color: #fff;
}

.nav__item:hover{
    color: #e84c3d;
}

=======================================================================================*/

    var headerH = $("#js-header").height(),
        navH = $("#js-nav-container").innerHeight();

    $(document).on("scroll", function() {

        var documentScroll = $(this).scrollTop();

        if(documentScroll > headerH) {
            $("#js-nav-container").addClass("fixed");

            $("#js-header").css({
                "paddingTop": navH
            });
        } else {
            $("#js-nav-container").removeClass("fixed");
            $("#js-header").removeAttr("style");
        }

    });




/*============================ Smooth scroll to the pages block==========================
<nav class="nav" id="js-nav">
    <a href="#js-header" class="nav__item nav__item_special">Hosting</a>
    <a href="#js-domain" class="nav__item nav__item_special">Domains</a>
    <a href="#js-features" class="nav__item">features</a>
    <a href="#js-plans" class="nav__item">plans</a>
    <a href="#js-testimonials" class="nav__item">testimonials</a>
    <a href="#js-contacts" class="nav__item">contacts</a>
</nav>
/////////////////////////////////////////////////////////////////////////////////////
CSS:
////////////////////////////////////////////////////////////////////////////////////

.nav{
    width: 590px;
    display: inline-block;
    vertical-align: middle;
    text-transform: uppercase;
    text-align: center;
}

.nav-container{
    border-bottom: 1px solid #424348;
    padding: 20px 0;
}

.nav-container.fixed{
    background-color: #2c3039;
    padding: 5px 0;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 200;
}

.nav__item{
    margin: 0 15px;
    -webkit-transition: color .2s;
    -moz-transition: color .2s;
    transition: color .2s;
    text-decoration: none;
    font-size: 12px;
    color: #fff;
}

.nav__item:hover{
    color: #e84c3d;
}

=======================================================================================*/

    $("#js-nav a").on("click", function(e) {

        e.preventDefault();

        var currentBlock = $(this).attr("href"),
            currentBlockOffset = $(currentBlock).offset().top;

        $("html, body").animate({
            scrollTop: currentBlockOffset - 20
        }, 500);

    });




/* =====================================Modals===========================================
<a href="#js-login-modal" class="btn btn_login pull-right js-show-modal">login</a>
<div class="modal js-modal" id="js-login-modal">
    <h2>Modal Title</h2>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    </p>
    <a href="#" class="btn btn_red js-modal-close">Close</a>
</div>

<div class="modal modal_lg js-modal" id="js-login-modal2">
    <h2>Modal Title</h2>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
    </p>
    <a href="#" class="btn btn_red js-modal-close">Close</a>
</div>
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CSS:
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

.modal{
    width: 300px;
    padding: 20px;
    background: #fff;
    text-align: center;
    position: fixed;
    top: 100px;
    left: 50%;
    z-index: 1000;
    display: none;
}

.modal_lg{
    width: 500px;
}

=======================================================================================*/

    $(".js-modal").each(function() {
        var modalWidth = $(this).innerWidth() / 2;

        $(this).css({
            "marginLeft": "-" + modalWidth + "px"
        });
    });

    $(".js-show-modal").on("click", function(e) {

        e.preventDefault();

        var currentModal = $(this).attr("href");

        $(currentModal).fadeIn(500);
        $("body").append("<div class='overlay' id='js-overlay'></div>").addClass("open-modal");

    });


    $(".js-modal-close").on("click", function(e) {

        e.preventDefault();
        $(".js-modal").fadeOut(100);
        $("body").removeClass("open-modal");
        $("#js-overlay").remove();

    });


    $("body").on("click", "#js-overlay", function() {
        $(".js-modal").fadeOut(100);
        $("body").removeClass("open-modal");
        $("#js-overlay").remove();
    });




/*======================================FAQ============================================
<div class="container page-block">
    <h2 class="title title_dark text-center">FAQ</h2>

    <div class="faq">

        <div class="faq__item">
            <a href="#question-1" class="faq-title js-faq-title">Question 1</a>
            <div class="faq-content js-faq-content" id="question-1">
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                </p>
            </div>
        </div>

        <div class="faq__item">
            <a href="#question-2" class="faq-title js-faq-title">Question 2</a>
            <div class="faq-content js-faq-content" id="question-2">
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                </p>
            </div>
        </div>

        <div class="faq__item">
            <a href="#question-3" class="faq-title js-faq-title">Question 3</a>
            <div class="faq-content js-faq-content" id="question-3">
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                </p>
            </div>
        </div>

    </div><!-- /.faq -->
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CSS:
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
.faq{
    width: 600px;
    margin: 30px auto;
}

.faq-content{
    padding: 5px 10px;
    font-size: 14px;
    display: none;
}

.faq-title{
    -webkit-transition: background-color .2s;
    -moz-transition: background-color .2s;
    transition: background-color .2s;
    display: block;
    padding: 5px 10px;
    color: #000;
    text-decoration: none;
    background-color: #eaeaea;
    border-bottom: 1px solid #d1d1d1;
}

.faq-title:hover{
    background-color: #ddd;
}

======================================================================================*/

    /*$(".js-faq-title").on("click", function(e) {

        e.preventDefault();
        var $this = $(this);

        if( !$this.hasClass("active") ) {
            $(".js-faq-content").slideUp();
            $(".js-faq-title").removeClass("active");
        }

        $this.toggleClass("active");
        $this.next().slideToggle();

    });*/


    $(".js-faq-title").on("click", function(e) {

        e.preventDefault();
        var $this = $(this),
            answerId = $this.attr("href"),
            questionParent = $this.parents(".faq");

        questionParent.toggleClass("test");

        if( !$this.hasClass("active") ) {
            $(".js-faq-content").slideUp();
            $(".js-faq-title").removeClass("active");
        }

        $this.toggleClass("active");
        $(answerId).slideToggle();

    });



/*====================================== Popup ======================================
<p>
If you need help finding a plan that’s right for you,<br> just
    <a href="#popup-1" class="link link_red rel js-popup-hover">
chat with a live person
    <span class="popup js-popup" id="popup-1">Some text popup</span>
</a>.
</p>
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CSS:
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

.popup{
    width: 150px;
    padding: 5px;
    background-color: #000;
    border-radius: 3px;
    color: #fff;
    font-size: 12px;
    position: absolute;
    left: 50%;
    top: 120%;
    z-index: 1;
    margin-left: -75px;
    display: none;
}

.popup:before{
    content: "";
    border-style: solid;
    border-width: 0 5px 4px 5px;
    border-color: transparent transparent #000 transparent;
    position: absolute;
    top: -3px;
    left: 50%;
    z-index: 1;
    margin-left: -3px;
}

====================================================================================*/

    $(".js-popup-hover").hover(function() {

        var $this = $(this),
            popupId = $this.attr("href");

        $(popupId).fadeIn();


    }, function() {

        $(".js-popup").fadeOut();
    });



/* =============================Company Blog text toggle==============================
<a href="#" class="link link_red js-read-more">Read More</a>
<p class="post-text"> lorem12
    <span class="hidden js-blog-content">
        Lorem23
    </span>
</p>
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CSS
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
.hidden{
    display: none;
}
====================================================================================*/

    $(".js-read-more").on("click", function(e) {

        e.preventDefault();

        var $this = $(this),
            text = $this.text();

        if( text == "Read More" ) {
            $this.text("Hide");
        } else {
            $this.text("Read More");
        }

        $(this).prev(".js-blog-content").toggleClass("hidden");

    });





/* ====================Slick.js http://kenwheeler.github.io/slick/======================

    <div class="$className$">

        <button class="$className$-arrow__prev js-slider-prev"></button>
        <button class="$className$-arrow__next js-slider-next"></button>

        <div id="js-testimonials-slider">

            <div class="js-slide">
                <div class="$className$__item">
                    <p class="$className$-text">
                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author">
                    </p>
                </div>
            </div>

            <div class="js-slide">
                <div class="$className$__item">
                    <p class="$className$-text">
                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author">
                    </p>
                </div>
            </div>

            <div class="js-slide">
                <div class="$className$__item">
                    <p class="$className$-text">
                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author">
                    </p>
                </div>
            </div>

            <div class="js-slide">
                <div class="$className$__item">
                    <p class="$className$-text">

                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author"></p>
                </div>
            </div>
        </div><!-- /$className$-slider -->

    </div><!-- /.testimonials -->
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
LESS
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

.slick-prev,
.slick-next {
    border: 0;
    color: transparent;
    font-size: 0;

    width: 20px;
    height: 30px;
    background: url("../i/slider-arrows.png") no-repeat;

    position: absolute;
    top: 50%;
    z-index: 1;
    margin-top: -15px;
    opacity: .8;

    &:focus {
        outline: 0;
    }

    &:hover {
        opacity: 1;
        cursor: pointer;
    }
}

.slick-prev {
    left: -25px;
}

.slick-next {
    right: -25px;
    background-position: -20px 0;
}



 //DOTS

.slick-slider {
    margin-bottom: 30px;
}

.slick-dots {
    position: absolute;
    bottom: -45px;
    list-style: none;
    display: block;
    text-align: center;
    padding: 0;
    width: 100%;

    li {
        position: relative;
        display: inline-block;
        margin: 0 5px;
        padding: 0;
        cursor: pointer;

        button {
            border: 0;
            padding: 0;
            width: 10px;
            height: 10px;
            background-color: #cfcfcf;
            border-radius: 50%;
            opacity: .8;

            color: transparent;
            font-size: 0;

            &:hover {
                cursor: pointer;
                opacity: 1;
            }

            &:hover, &:focus {
                outline: none;
            }
        }

        &.slick-active button {
            background-color: #e84c3d;
            opacity: 1;
        }
    }
}



SLIDER
======================
.slick-slider {
    position: relative;
    display: block;
    box-sizing: border-box;
    user-select: none;
    -ms-touch-action: pan-y;
    touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}
.slick-list {
    position: relative;
    overflow: hidden;
    display: block;
    margin: 0;
    padding: 0;

    &:focus {
        outline: none;
    }

    &.dragging {
        cursor: pointer;
        cursor: hand;
    }
}
.slick-slider .slick-track,
.slick-slider .slick-list {
    transform: translate3d(0, 0, 0);
}

.slick-track {
    position: relative;
    left: 0;
    top: 0;
    display: block;

    &:before,
    &:after {
        content: "";
        display: table;
    }

    &:after {
        clear: both;
    }

    .slick-loading & {
        visibility: hidden;
    }
}
.slick-slide {
    float: left;
    height: 100%;
    min-height: 1px;

    &:focus {
        outline: 0;
    }
    img {
        display: inline-block;
    }
    &.slick-loading img {
        display: none;
    }

    display: none;

    &.dragging img {
        pointer-events: none;
    }

    .slick-initialized & {
        display: block;
    }

    .slick-loading & {
        visibility: hidden;
    }

    .slick-vertical & {
        display: block;
        height: auto;
        border: 1px solid transparent;
    }
}
.slick-arrow.slick-hidden {
    display: none;
}

======================================================================================*/

    $('#js-testimonials-slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        dots: true,
        autoplay: true,
        autoplaySpeed: 4000,
        fade: false
    });


    $(".js-slider-prev").on("click", function() {
        $('#js-testimonials-slider').slick("slickPrev");
    });

    $(".js-slider-next").on("click", function() {
        $('#js-testimonials-slider').slick("slickNext");
    });

    $(".section_1 .section-content .info-item").equalHeights();
    $(".section_3 .section-content .info-item").equalHeights();
    $(".s1-bottom .info-item").equalHeights();
    $(".s2-item").equalHeights();
    $(".s2-item .img-wrap").equalHeights();


    $(document).ready(function() {

        $(".toggle-mnu").click(function() {
            $(this).toggleClass("on");
            $(".main-mnu").slideToggle();
            return false;
        });

        $(".main-footer .toggle-mnu").click(function() {
            $("html, body").animate({ scrollTop: $(document).height() }, "slow");
            return false;
        });

        $(".top").click(function() {
            $("html, body").animate({ scrollTop: 0 }, "slow");
            return false;
        });

        $(".arrow-bottom").click(function() {
            $("html, body").animate({ scrollTop: $(".main-head").height()+120 }, "slow");
            return false;
        });

        $(".section_1 .section-content .info-item").equalHeights();
        $(".section_3 .section-content .info-item").equalHeights();
        $(".s1-bottom .info-item").equalHeights();
        $(".s2-item").equalHeights();
        $(".s2-item .img-wrap").equalHeights();

        $(".section_4").waypoint(function() {

            $(".section_4 .card").each(function(index) {
                var ths = $(this);
                setInterval(function() {
                    ths.removeClass("card-off").addClass("card-on");
                }, 200*index);
            });

        }, {
            offset : "20%"
        });

        var waypointsvg = new Waypoint({

            element: $(".section_5"),
            handler: function(dir) {

                if (dir === "down") {

                    $(".section_5 .tc-item").each(function(index) {
                        var ths = $(this);
                        setTimeout(function() {
                            var myAnimation = new DrawFillSVG({
                                elementId: "tc-svg-" + index
                            });
                            ths.children(".tc-content").addClass("tc-content-on");
                        }, 500*index);
                    });

                };
                this.destroy();
            },
            offset: '35%'
        });

        $(".section_6").waypoint(function() {

            $(".section_6 .team").each(function(index) {
                var ths = $(this);
                setInterval(function() {
                    ths.removeClass("team-off").addClass("team-on");
                }, 200*index);
            });

        }, {
            offset : "35%"
        });

        $(".slider").owlCarousel({
            items : 1,
            nav : true,
            navText : "",
            loop : true,
            autoplay : true,
            autoplayHoverPause : true,
            fluidSpeed : 600,
            autoplaySpeed : 600,
            navSpeed : 600,
            dotsSpeed : 600,
            dragEndSpeed : 600
        });

        $(".section-head h2, .section-head p").animated("fadeIn");
        $(".info-item-wrap").animated("zoomIn");
        $(".slider .slide").animated("fadeIn");
        $(".homesect.section_8 .forms").animated("fadeInRight");
        $(".homesect.section_8 .p").animated("fadeIn");

        $(".section_2").waypoint(function() {
            $(".s2-item-wrap").each(function(index) {
                var ths = $(this);
                setInterval(function() {
                    ths.addClass("on");
                }, 200*index);
            });
        }, {
            offset : "30%"
        });

        $(".section_8").waypoint(function() {
            $(".s8-item").each(function(index) {
                var ths = $(this);
                setInterval(function() {
                    ths.addClass("on");
                }, 200*index);
            });
        }, {
            offset : "30%"
        });


        //Цели для Яндекс.Метрики и Google Analytics
        $(".count_element").on("click", (function() {
            ga("send", "event", "goal", "goal");
            yaCounterXXXXXXXX.reachGoal("goal");
            return true;
        }));

        //SVG Fallback
        if(!Modernizr.svg) {
            $("img[src*='svg']").attr("src", function() {
                return $(this).attr("src").replace(".svg", ".png");
            });
        };
        
       /*
        https://codepen.io/agragregra/pen/OMNLQJ
        Magnific-Popup: http://dimsemenov.com/plugins/magnifi...
        Magnific-Popup Animation & Preloader Gist: https://gist.github.com/agragregra/54...
        */

        $(".homesect .section-bottom .buttons").click(function() {
            $("#callback h4").html($(this).text());
            $("#callback input[name=formname]").val($(this).text());
        }).magnificPopup({
            type:"inline",
            mainClass: 'mfp-forms'
        });

        //Аякс отправка форм
        //Документация: http://api.jquery.com/jquery.ajax/
        $(".forms").submit(function() {
            $.ajax({
                type: "POST",
                url: "mail.php",
                data: $(this).serialize()
            }).done(function() {
                alert("Спасибо за заявку!");
                setTimeout(function() {
                    $.magnificPopup.close();
                    $(".forms").trigger("reset");
                }, 1000);
            });
            return false;
        });

        //Chrome Smooth Scroll
        try {
            $.browserSelector();
            if($("html").hasClass("chrome")) {
                $.smoothScroll();
            }
        } catch(err) {

        };

        $("img, a").on("dragstart", function(event) { event.preventDefault(); });

    });
//Цели для Яндекс.Метрики и Google Analytics
    $(".count_element").on("click", (function() {
        ga("send", "event", "goal", "goal");
        yaCounterXXXXXXXX.reachGoal("goal");
        return true;
    }));

    //SVG Fallback
    if(!Modernizr.svg) {
        $("img[src*='svg']").attr("src", function() {
            return $(this).attr("src").replace(".svg", ".png");
        });
    };

    //Аякс отправка форм
    //Документация: http://api.jquery.com/jquery.ajax/
    $("#form").submit(function() {
        $.ajax({
            type: "POST",
            url: "mail.php",
            data: $(this).serialize()
        }).done(function() {
            alert("Спасибо за заявку!");
            setTimeout(function() {

                $("#form").trigger("reset");
            }, 1000);
        });
        return false;
    });

    //Chrome Smooth Scroll
    try {
        $.browserSelector();
        if($("html").hasClass("chrome")) {
            $.smoothScroll();
        }
    } catch(err) {

    };

    $("img, a").on("dragstart", function(event) { event.preventDefault(); });
 /*
Создание сайта с нуля. Урок #18: Верстка. animateNumber + верстка секции «Основные направления услуг»
Необходимые для прохождения урока файлы: https://yadi.sk/d/ELQeHwD73LSznJ
jQuery.animateNumber: http://aishek.github.io/jquery-animateNumber/
jQuery Number Animation with Blur + Number Separator: http://codepen.io/agragregra/pen/QyNvrN
Waypoints Documentation: http://imakewebthings.com/waypoints/guides/jquery-zepto/
Stackoverflow SVG: http://stackoverflow.com/questions/24933430/img-src-svg-changing-the-fill-color
*/
$(function() {

	$(".gallery-tizer-wrap")
		.attr("href", $(".gallery-images a").attr("href"))
		.css("background-image", "url(" + $(".gallery-images a").data("preview") + ")");
	$(".gallery-images a:first").remove();

	$(".certificate-wrap > a")
		.attr("href", $(".certificates a").attr("href"))
	$(".certificates a:first").remove();

	$("form select").selectize();

	$(".carousel-brands").owlCarousel({
		loop:true,
		margin: 30,
		nav: true,
		navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
		responsive:{
				0:{
						items:1,
				},
				520:{
						items:1,
				},
				560:{
						items:2,
				},
				768:{
						items:2,
				},
				992:{
						items:3,
				},
				1200:{
						items:4,
				}
		}
	});

	$(".ishome .carousel-eq").owlCarousel({
		loop:true,
		responsive:{
				0:{
						items:1,
				},
				520:{
						items:1,
				},
				560:{
						items:2,
				},
				768:{
						items:2,
				},
				992:{
						items:3,
				},
				1200:{
						items:4,
				}
		}
	});

	function heightses() {
		$(".s-direct .item-vertical p").height('auto').equalHeights();
		$(".carousel-text").height('auto').equalHeights();
		$(".testimonials-head").height('auto').equalHeights();
		$(".testimonials-desc").height('auto').equalHeights();
	}

	$(window).resize(function() {
		heightses();
	});

	heightses();

	$(".portfolio-item").each(function(e) {

		var th = $(this);

		th.attr("href", "#portfolio-img-" + e)
			.find(".portfolio-popup")
				.attr("id", "portfolio-img-" + e);

	});

	$(".portfolio-item, a[href='#callback']").magnificPopup({
		mainClass: 'my-mfp-zoom-in',
		removalDelay: 300,
		type: 'inline',
	});

	$("a[href='#callback']").click(function() {
		var dataForm = $(this).data("form");
		var dataText = $(this).data("text");
		$(".form-callback h4").text(dataText);
		$(".form-callback [name=admin-data]").val(dataForm);
	});

	$(".mfp-gallery").each(function() {
		$(this).magnificPopup({
			delegate: 'a',
			mainClass: 'mfp-zoom-in',
			type: 'image',
			tLoading: '',
			gallery:{
				enabled: true,
			},
			removalDelay: 300,
			callbacks: {
				beforeChange: function() {
					this.items[0].src = this.items[0].src + '?=' + Math.random();
				},
				open: function() {
					$.magnificPopup.instance.next = function() {
						var self = this;
						self.wrap.removeClass('mfp-image-loaded');
						setTimeout(function() { $.magnificPopup.proto.next.call(self); }, 120);
					}
					$.magnificPopup.instance.prev = function() {
						var self = this;
						self.wrap.removeClass('mfp-image-loaded');
						setTimeout(function() { $.magnificPopup.proto.prev.call(self); }, 120);
					}
				},
				imageLoadComplete: function() {
					var self = this;
					setTimeout(function() { self.wrap.addClass('mfp-image-loaded'); }, 16);
				}
			}
		});
	});

	$(".mouse-icon").click(function() {
		$("html, body").animate({
			scrollTop : $(".s-adv").offset().top
		}, 800);
	});

	$(".s-adv").waypoint(function() {

		$({blurRadius: 5}).animate({blurRadius: 0}, {
			duration: 1200,
			easing: 'swing',
			step: function() {
				$(".s-adv-item h3 span").css({
					"-webkit-filter": "blur("+this.blurRadius+"px)",
					"filter": "blur("+this.blurRadius+"px)"
				});
			}
		});
		var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(' ');
		$(".s-adv-item h3 span").each(function() {
			var tcount = $(this).data("count");
			$(this).animateNumber({ number: tcount,
				easing: 'easeInQuad',
				"font-size": "1.8125em",
				numberStep: comma_separator_number_step},
				1200);
		});
		this.destroy();

	}, {
		offset: '70%'
	});

	$(".toggle-mnu").click(function() {
		$(this).toggleClass("on");
		$(this).parent().next().next().find(".main-mnu").slideToggle();
		return false;
	});

	$(".main-foot .toggle-mnu").click(function() {
		$("html, body").animate({scrollTop: $(document).height() + 200}, "slow");
		return false;
	});

	$("body").on("click", ".top", function() {
		$("html, body").animate({scrollTop: 0}, "slow");
	});

	//SVG Fallback
	if(!Modernizr.svg) {
		$("img[src*='svg']").attr("src", function() {
			return $(this).attr("src").replace(".svg", ".png");
		});
	};

	//E-mail Ajax Send
	//Documentation & Example: https://github.com/agragregra/uniMail
	$("form").submit(function() { //Change
		var th = $(this);
		$.ajax({
			type: "POST",
			url: "/mail.php", //Change
			data: th.serialize()
		}).done(function() {
			th.find(".success").addClass("active");
			setTimeout(function() {
				// Done Functions
				th.find(".success").removeClass("active");
				th.trigger("reset");
				$.magnificPopup.close();
			}, 3000);
		});
		return false;
	});

	$("body").append('<div class="top"><i class="fa fa-angle-double-up">');

	$("img, a").on("dragstart", function(event) { event.preventDefault(); });

	//Replace all SVG images with inline SVG
	$('img.js-img-svg').each(function(){
		var $img = $(this);
		var imgClass = $img.attr('class');
		var imgURL = $img.attr('src');

		$.get(imgURL, function(data) {
				// Get the SVG tag, ignore the rest
				var $svg = $(data).find('svg');

				// Add replaced image's classes to the new SVG
				if(typeof imgClass !== 'undefined') {
					$svg = $svg.attr('class', imgClass+' replaced-svg');
				}

				// Remove any invalid XML tags as per http://validator.w3.org
				$svg = $svg.removeAttr('xmlns:a');

				// Check if the viewport is set, if the viewport is not set the SVG wont't scale.
				if(!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {
					$svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'))
				}

				// Replace image with new SVG
				$img.replaceWith($svg);

			}, 'xml');

	});

	$(window).scroll(function() {
		if($(this).scrollTop() > $(this).height()) {
			$(".top").addClass("active");
		} else {
			$(".top").removeClass("active");
		}
	});

});
     /*================CSS ПОДКЛЮЧЕНИЯ: ===========
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/slick-theme.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.min.css">
    <link rel="stylesheet" href="css/style.css">
    ================================================*/

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Popup -->
    <script>
      $(document).ready(function($){
        $('.popup-btn').on('click', function(event) {
          $('.popup-call').fadeIn();
        });
        $('.popup-close').on('click', function(event) {
          $('.popup-call').fadeOut();
          $('.popup-thanks').fadeOut();
        });
        $('.thanks-btn').on('click', function(event) {
          $('.popup-thanks').fadeOut();
        });
        $('#manager-call').on('click', function(event) {
          $('.popup-call').fadeIn();
        })
      });
    </script>

    <!-- Формы -->
     <!-- Popup -->
    <div class="popup popup-call">
      <!-- Само (белое) модальное окно -->
      <div class="popup-dialog">
        <!-- Содежримое -->
        <div class="popup-content">
          <button type="submit" class="popup-close">&times;</button>
          <h4 class="popup-header">
            Заинтересовало?
          </h4>
          <p>Оставьте свои контактные данные <br>для связи</p>
          <form method="post" name="third-form" action="mailer/smart.php" class="form">
              <input name="user_name" required type="text" placeholder="Ваше имя">
              <input name="user_phone" id="phone-3" required type="text" placeholder="Ваш телефон">
              <button id="third-btn" type="submit" class="popup-thanks-btn">Оставить заявку</button>
             <p>Наш менеджер перезвонит Вам в течене 15 минут для консультации.<br>* при заказе строительства дома</p>
          </form>
        </div>
      </div>
    </div>

    <!-- Popup -->
    <div class="popup popup-thanks">
      <!-- Само (белое) модальное окно -->
      <div class="popup-dialog">
        <!-- Содежримое -->
        <div class="popup-content">
          <button type="submit" class="popup-close">&times;</button>
          <h2 class="popup-header">
            Спасибо за заявку
          </h4>
          <p>В течение 5 минут мы Вам перезвоним</p>
          <button class="thanks-btn button-small">Вернуться на сайт</button>
        </div>
      </div>
    </div>

    <script>
      $(function() {
        $('form').submit(function(e) {
          var $form = $(this);
          $.ajax({
            type: $form.attr('method'),
            url: $form.attr('action'),
            data: $form.serialize()
          }).done(function() {
            $('.popup-call').fadeOut();
            $('.popup-thanks').fadeIn();
            $('form[name=first-form]').trigger('reset');
            $('form[name=second-form]').trigger('reset');
            $('form[name=third-form]').trigger('reset');
          }).fail(function() {
            alert('Заявка не отправлена по тех причинам');
          });
          //отмена действия по умолчанию для кнопки submit
          e.preventDefault();
        });
      });
    </script>

      <div class="row">
          <div class="main-cta-block col-md-12 col-sm-12 col-xs-12">

            <div class="col-md-7 col-md-offset-1 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0">
              <b class="main-cta">Оставь заявку прямо сейчас</b>
              <b class="main-cta-sub">и получи <span>бесплатный расчет</span> и <span>входную дверь</span> в подарок<sup>*</sup>!</b>

              <form method="post" name="first-form" action="mailer/smart.php" class="form">

                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input name="user_name" required type="text" placeholder="Ваше имя">
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input name="phone" id="phone-1" required type="text" placeholder="Ваш телефон">
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                  <button id="first-btn" type="submit" class="popup-thanks-btn">Оставить заявку</button>
                </div>

                <div class="col-md-6 col-md-offset-0 col-sm-6 col-sm-offset-0 col-xs-12 col-xs-offset-0">
                  <p>Наш менеджер перезвонит Вам в течене 15 минут для консультации.<br>* при заказе строительства дома</p>
                </div>

              </form>

            </div>

          </div>
        </div>
    <!-- Маска -->
    <script src="js/jquery.maskedinput.min.js"></script>
    <script>
      jQuery(function($){
         $("#phone-1").mask("+7 (999) 999-9999");
         $("#phone-2").mask("+7 (999) 999-9999");
         $("#phone-3").mask("+7 (999) 999-9999");
         $("#phone-4").mask("+7 (999) 999-9999");
      });
    </script>
    <!-- Слайдер -->
    <section class="review" id="review">
      <div class="container">
        <h2>Клиенты о нас</h2>
        <div class="row">
          <div class="slider_ex">
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <script src="js/slick.min.js"></script>
    <script>
      $(document).ready(function(){
        $('.slider_ex').slick({
          infinite: true,
          speed: 300,
          slidesToShow: 3,
          slidesToScroll: 1,
          prevArrow: '<button type="submit" class="prev"></button>',
          nextArrow: '<button type="submit" class="next"></button>',
          responsive: [
            {
              breakpoint: 991,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 767,
              settings: {
                adaptiveHeight: true,
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
          ]
        });
      });
    </script>

     <section class="shop" id="shop">
      <div class="container">
        <h2>Популярные проекты</h2>
        <ul class="shop-ul">
          <li><a class="active-color" href="#shop" id="a-1">Дома из бруса</a></li>
          <li><a href="#shop" id="a-2">Сруб</a></li>
          <li><a href="#shop" id="a-3">Каркасные дома</a></li>
          <li><a href="#shop" id="a-4">Кирпичные дома</a></li>
          <li><a href="#shop" id="a-5">Дома из блоков</a></li>
        </ul>
        <!-- Дома из блоков -->
        <div class="shop-cards" id="shop-cards-5">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/1.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/2.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/3.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/4.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/5.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/6.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/7.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/5/8.jpg" alt="">
              <h3>Дом из блоков D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
        </div>

        <!-- Кирпичные дома -->
        <div class="shop-cards" id="shop-cards-4">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/4/1.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/4/2.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/4/3.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/4/4.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/4/5.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/4/6.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/4/7.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3.jpg" alt="">
              <h3>Кирпичный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
        </div>

        <!-- Каркасные дома -->
        <div class="shop-cards" id="shop-cards-3">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/1.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/2.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/3.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/4.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/5.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/6.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/7.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/3/8.jpg" alt="">
              <h3>Каркасный дом D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
        </div>

        <!-- Сруб -->
        <div class="shop-cards" id="shop-cards-2">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/1.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/2.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/3.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/4.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/5.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/6.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/7.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/2/8.jpg" alt="">
              <h3>Сруб D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
        </div>

        <!-- Дома из бруса -->
        <div class="shop-cards active" id="shop-cards-1">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/1.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/2.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/3.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/4.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/5.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/6.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/7.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="shop-card">
              <img src="img/shop/1/8.jpg" alt="">
              <h3>Дом из бруса D-123</h3>
              <p>Площадь 59.86 м<sup>2</sup></p>
              <span>614 000</span>
              <b>453 820 руб.</b>
              <button type="submit" class="popup-btn button-small">Оставить заявку</button>
            </div>
          </div>
        </div>

      </div>
    </section>
    
    <!-- Скрипт для магазина -->
    <script>
      $(function() {
        $('#a-1').click(function(){
          $('#shop-cards-1').addClass('active');
          $('#shop-cards-2').removeClass('active');
          $('#shop-cards-3').removeClass('active');
          $('#shop-cards-4').removeClass('active');
          $('#shop-cards-5').removeClass('active');
          $('#a-1').addClass('active-color');
          $('#a-2').removeClass('active-color');
          $('#a-3').removeClass('active-color');
          $('#a-4').removeClass('active-color');
          $('#a-5').removeClass('active-color');
          // $('html, body').animate({scrollTop:$('#shop-cards-1').position().top}, 800);
        });
        $('#a-2').click(function(){
          $('#shop-cards-2').addClass('active');
          $('#shop-cards-1').removeClass('active');
          $('#shop-cards-3').removeClass('active');
          $('#shop-cards-4').removeClass('active');
          $('#shop-cards-5').removeClass('active');
          $('#a-2').addClass('active-color');
          $('#a-1').removeClass('active-color');
          $('#a-3').removeClass('active-color');
          $('#a-4').removeClass('active-color');
          $('#a-5').removeClass('active-color');
          // $('html, body').animate({scrollTop:$('#shop-cards-2').position().top}, 800);
        });
        $('#a-3').click(function(){
          $('#shop-cards-3').addClass('active');
          $('#shop-cards-2').removeClass('active');
          $('#shop-cards-1').removeClass('active');
          $('#shop-cards-4').removeClass('active');
          $('#shop-cards-5').removeClass('active');
          $('#a-3').addClass('active-color');
          $('#a-2').removeClass('active-color');
          $('#a-1').removeClass('active-color');
          $('#a-4').removeClass('active-color');
          $('#a-5').removeClass('active-color');
          // $('html, body').animate({scrollTop:$('#shop-cards-3').position().top}, 800);
        });
        $('#a-4').click(function(){
          $('#shop-cards-4').addClass('active');
          $('#shop-cards-2').removeClass('active');
          $('#shop-cards-3').removeClass('active');
          $('#shop-cards-1').removeClass('active');
          $('#shop-cards-5').removeClass('active');
          $('#a-4').addClass('active-color');
          $('#a-2').removeClass('active-color');
          $('#a-3').removeClass('active-color');
          $('#a-1').removeClass('active-color');
          $('#a-5').removeClass('active-color');
          // $('html, body').animate({scrollTop:$('#shop-cards-4').position().top}, 800);
        });
        $('#a-5').click(function(){
          $('#shop-cards-5').addClass('active');
          $('#shop-cards-2').removeClass('active');
          $('#shop-cards-3').removeClass('active');
          $('#shop-cards-4').removeClass('active');
          $('#shop-cards-1').removeClass('active');
          $('#a-5').addClass('active-color');
          $('#a-2').removeClass('active-color');
          $('#a-3').removeClass('active-color');
          $('#a-4').removeClass('active-color');
          $('#a-1').removeClass('active-color');
          // $('html, body').animate({scrollTop:$('#shop-cards-5').position().top}, 800);
        });
      });
    </script>

     <nav class="header" style="display: none;">
      <div class="container">
        <div class="row">
          <div class="col-lg-2 col-lg-offset-0 col-md-2 col-md-offset-0 col-sm-4 col-sm-offset-0 col-xs-8 col-xs-offset-2">
            <img src="img/main/logo.png" alt="Arkada. Строительство и монтаж">
          </div>
          <div class="col-lg-5 col-lg-offset-0 col-md-6 col-md-offset-0 col-sm-0 col-sm-offset-0" id="menu-div">
            <div class="wrap">
              <div class="wrap-block">
                <ul class="header-ul" id="menu">
                  <li><a href="#shop">Проекты</a></li>
                  <li><a href="#example">Примеры работ</a></li>
                  <li><a href="#review">Отзывы</a></li>
                  <li><a href="#contacts">Контакты</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-lg-offset-1 col-md-2 col-md-offset-0 col-sm-4 col-sm-offset-0 col-xs-8 col-xs-offset-2">
            <div class="wrap">
              <div class="wrap-block">
                <a href="tel:+79106287744" class="header-phone">8-910-628-77-44</a>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-lg-offset-0 col-md-2 col-md-offset-0 col-sm-4 col-sm-offset-0 col-xs-8 col-xs-offset-2">
            <button type="submit" class="button-small popup-btn">
              Перезвоните мне
            </button>
          </div>
        </div>
      </div>
    </nav>

    <script src="js/jquery.slicknav.min.js"></script>
    <script>
      $(function(){
        $('#menu').slicknav({
          label: '',
          duration: 1000,
        });
      });
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>


});