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
                <a href="#" class="nav__item">Hosting</a>
                <a href="#" class="nav__item">Domains</a>
                <a href="#" class="nav__item">features</a>
                <a href="#" class="nav__item">testimonials</a>
                <a href="#" class="nav__item">contacts</a>
            </nav>

            <a href="#" class="btn btn_login pull-right">login</a>
        </div><!-- /.container -->
    </div><!-- /.nav-container -->



.header{
  background: #2c3039 url("../i/header.jpg") center top no-repeat;
}

.logo-container{
  display: inline-block;
  vertical-align: middle;
}

.logo{
  display: inline-block;
  vertical-align: middle;
  text-decoration: none;
}

.logo img{
  display: inline-block;
  vertical-align: middle;
  margin-right: 20px;
}

.slogan{
  display: inline-block;
  vertical-align: middle;
  color: #fff;
  text-transform: uppercase;
  font-weight: bold;
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
    /* Fixed header when scroll
    ====================================*/

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


