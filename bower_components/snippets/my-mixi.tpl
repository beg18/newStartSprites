  <div class="stn-portfolio">
    <section class="wrapper container tab-wrapper">
      <ul class="horizontal-nav black-font tab-menu">
        <li><a href="#!" class="active">All</a></li>
        <li><a href="#!">Paronamars</a></li>
        <li><a href="#!">Portreits</a></li>
        <li><a href="#!">Macro</a></li>
        <li><a href="#!">Journal</a></li>
      </ul>
      <h2 class="stn-heading black-line">Portfolio</h2>
      <div class="row thumbs-row thumbs-wrap">
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-1"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-2"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-3"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-4"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-5"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-6"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-7"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!" class="thumb-8"></a></div>
      </div><!-- ///row -->
      <div class="row thumbs-row thumbs-wrap">
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>

      </div><!-- ///row -->
      <div class="row thumbs-row thumbs-wrap">
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
        <div class="thumbs-item col-sm-6 col-md-3"><a href="#!"></a></div>
      </div><!-- ///row -->
    </section><!-- //container -->
  </div><!-- //stn-portfolio -->

/*
=============================
CSS
=============================
*/


.stn-portfolio {
  padding: 80px 0;
}

.site-nav {
  background-color: #48525a;
  background-color: rgba(72, 82, 90, 0.85);
  padding: 60px 0;
}
.site-nav .horizontal-nav {
  float: right;
}

.horizontal-nav {
  margin: 0;
  padding: 0;
  list-style: none;
}

.horizontal-nav li {
  display: inline-block;
  margin-left: 15px;
}
.horizontal-nav li a {
  transition: all 0.3s ease-in-out;
  display: block;
  border: 2px solid transparent;
  color: #fff;
  font-weight: 600;
  text-transform: uppercase;
  text-decoration: none;
  padding: 10px 17px;
  line-height: 1;
}
.horizontal-nav li a.active {
  border-color: #4bcaff;
  color: #4bcaff;
}
.horizontal-nav li a:hover {
  color: #4bcaff;
}
.horizontal-nav.black-font a {
  color: #515f67;
}
.main-nav-trigger {
  display: none;
  font-size: 45px;
  color: #fff;
  float: right;
  line-height: 1;
  cursor: pointer;
  transition: color 0.3s ease-in-out;
  font-family: Arial Unicode MS, Lucida Sans Unicode, sans-serif;
}
.main-nav-trigger:hover {
  color: #4bcaff;
}

@media (max-width: 992px) {
  .main-nav-trigger {
    display: block;
  }
  .main-logo {
    float: left;
  }
  .site-nav {
    position: relative;
  }
  .site-nav .horizontal-nav {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    width: 100%;
    background-color: #48525a;
  }
  .site-nav .horizontal-nav li {
    width: 100%;
    display: block;
    margin-left: 0;
    text-align: center;
    border-bottom: 1px solid #535f68;
  }
  .site-nav .horizontal-nav a {
    display: inline-block;
    padding: 20px 30px;
  }
  .site-nav .horizontal-nav a.active {
    border-color: transparent;
  }
}
.stn-portfolio .horizontal-nav {
  float: right;
}
.stn-portfolio .stn-heading {
  margin-bottom: 80px;
}
.thumbs-row {
  min-height: 570px;
}
.thumbs-row [class^="col-"] {
  margin-bottom: 30px;
}
.thumbs-row a {
  position: relative;
  display: block;
  height: 270px;
  opacity: .8;
  color: #fff;
  font-size: 72px;
  text-align: center;
  font-weight: 200;
  background-color: pink;
}
.thumbs-row a:hover {
  text-decoration: none;
}
.thumbs-row a:after {
  display: block;
  text-align: center;
  position: absolute;
  content: '+';
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: #454e56;
  background-color: rgba(69, 78, 86, 0.8);
  line-height: 1;
  opacity: 0;
  -webkit-transition: all 0.3s ease-in-out;
          transition: all 0.3s ease-in-out;
}
.thumbs-row a:hover:after {
  opacity: 1;
  line-height: 3.75;
}
.thumb-1 {
  background-image: url('../img/thumb-1.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.thumb-2 {
  background-image: url('../img/thumb-2.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.thumb-3 {
  background-image: url('../img/thumb-3.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.thumb-4 {
  background-image: url('../img/thumb-4.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.thumb-5 {
  background-image: url('../img/thumb-5.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.thumb-6 {
  background-image: url('../img/thumb-6.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.thumb-7 {
  background-image: url('../img/thumb-7.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}
.thumb-8 {
  background-image: url('../img/thumb-8.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: scroll;
}

/*
=============================
JS
=============================
*/

(function ($) {
  'use strict';

  $(document).ready(function () {

    function blueasyTabs() {
      var $wrapper = $('.tab-wrapper'),
          $menu = $wrapper.find('.tab-menu li'),
          $content = $wrapper.find('.thumbs-row');

      $content.not(':first-of-type').hide();
      $content.each(function(i) {
        $(this).attr('data-tab', 'tab-'+i);
      });
      $menu.each(function(i) {
        $(this).attr('data-tab', 'tab-'+i);
      });

      $menu.click(function() {
        var $getWrapper = $(this).closest($wrapper),
            dataTab = $(this).attr('data-tab');

        $getWrapper.find($menu).find('a').removeClass('active');
        $(this).find('a').addClass('active');

        $getWrapper.find($content).hide();
        $getWrapper.find($content).filter('[data-tab='+dataTab+']').show();
      });
    }
    blueasyTabs();
    //end blueasyTabs

  }); //end ready

}(jQuery));



























