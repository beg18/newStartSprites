//https://www.youtube.com/watch?v=aiWOOo0kQ-4&list=PLhSMKtAqXupGbc3fRUSb9ups_9hiwNMnT&index=10
<nav class="site-nav">
  <div class="container">
    <a href="#!" class="main-logo">
      <img src="assets/img/blueasy-logo.png" alt="Blueasy">
    </a>
    <span class="main-nav-trigger trigger-nav">&#9776;</span>
    <ul class="horizontal-nav trigger-victim">
      <li><a href="#!" class="active">Home</a></li>
      <li><a href="#!">Services</a></li>
      <li><a href="#!">Features</a></li>
      <li><a href="#!">Portfolio</a></li>
      <li><a href="#!">Contact</a></li>
    </ul>
  </div><!-- //.container -->
</nav><!-- //.site-nav -->

/*
=============================
CSS
=============================
*/

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
/*
=============================
JS
=============================
*/
(function ($) {
  'use strict';

  $(document).ready(function () {

    function blueasyMenu() {
      var $trigger = $('.trigger-nav'),
          $menu = $('.trigger-victim');

      $trigger.click(function() {
        $(this).next($menu).slideToggle();
      });

      $(window).resize(function() {
        if ( $(window).width() > 992 ) {
          $menu.removeAttr('style');
        }
      });
    }
    blueasyMenu();

  }); //end ready

}(jQuery));