
<!--================= Rotate Bar ==================-->
<div class="rotate-bar">
    <div class="container-fluid p0">
        <div class="row">
            <div class="col-md-4">
                <div class="title">css3 Transform Rotate Bar</div>
            </div>
            <div class="col-md-8">
                <div class="tab-menu">
                    <ul>
                        <li><a href=""><span>Home</span></a></li>
                        <li><a href=""><span>About us</span></a></li>
                        <li class="active"><a href=""><span>Service</span></a></li>
                        <li><a href=""><span>News</span></a></li>
                        <li><a href=""><span>Contact Us</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="how-section1">
    <div class="row">
        <div class="col-md-6 how-img">
            <img src="https://image.ibb.co/dDW27U/Work_Section2_freelance_img1.png" class="rounded-circle img-fluid" alt=""/>
        </div>
        <div class="col-md-6">
            <h4>Find rewarding projects</h4>
            <h4 class="subheading">GetLance is a great place to find more clients, and to run and grow your own freelance business.</h4>
            <p class="text-muted">Freedom to work on ideal projects. On GetLance, you run your own business and choose your own clients and projects. Just complete your profile and we’ll highlight ideal jobs. Also search projects, and respond to client invitations.
                Wide variety and high pay. Clients are now posting jobs in hundreds of skill categories, paying top price for great work.
                More and more success. The greater the success you have on projects, the more likely you are to get hired by clients that use GetLance.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h4>Get hired quickly</h4>
            <h4 class="subheading">GetLance makes it easy to connect with clients and begin doing great work.</h4>
            <p class="text-muted">Streamlined hiring. GetLance’s sophisticated algorithms highlight projects you’re a great fit for.
                Top Rated and Rising Talent programs. Enjoy higher visibility with the added status of prestigious programs.
                Do substantial work with top clients. GetLance pricing encourages freelancers to use GetLance for repeat relationships with their clients.</p>
        </div>
        <div class="col-md-6 how-img">
            <img src="https://image.ibb.co/cHgKnU/Work_Section2_freelance_img2.png" class="rounded-circle img-fluid" alt=""/>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 how-img">
            <img src="https://image.ibb.co/ctSLu9/Work_Section2_freelance_img3.png" class="rounded-circle img-fluid" alt=""/>
        </div>
        <div class="col-md-6">
            <h4>Work efficiently, effectively.</h4>
            <h4 class="subheading">With GetLance, you have the freedom and flexibility to control when, where, and how you work. Each project includes an online workspace shared by you and your client, allowing you to:</h4>
            <p class="text-muted">Send and receive files. Deliver digital assets in a secure environment.
                Share feedback in real time. Use GetLance Messages to communicate via text, chat, or video.
                Use our mobile app. Many features can be accessed on your mobile phone when on the go.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h4>Get paid on time</h4>
            <h4 class="subheading">All projects include GetLance Payment Protection — helping ensure that you get paid for all work successfully completed through the freelancing website.</h4>
            <p class="text-muted">All invoices and payments happen through GetLance. Count on a simple and streamlined process.
                Hourly and fixed-price projects. For hourly work, submit timesheets through GetLance. For fixed-price jobs, set milestones and funds are released via GetLance escrow features.
                Multiple payment options. Choose a payment method that works best for you, from direct deposit or PayPal to wire transfer and more.</p>
        </div>
        <div class="col-md-6 how-img">
            <img src="https://image.ibb.co/gQ9iE9/Work_Section2_freelance_img4.png" class="rounded-circle img-fluid" alt=""/>
        </div>
    </div>
</div>
<!-- End header -->
.tab-wrap {
  .row-flex();
  .justify-bet();
}

.column-md-3 {
  .col();
  .beam(3);
}

.column-md-9 {
  .col();
  .beam(9);
}

.nav-pills .nav-link.active, .nav-pills .show > .nav-link {
  color: #fff;
  background-color: @orange;
}
.nav-pills .nav-link {
  border-radius: 0;
}
@import url('https://fonts.googleapis.com/css?family=Open+Sans:400,700,800');
@import url('https://fonts.googleapis.com/css?family=Lobster');
html {
  font-size: 62.5%;
}
body {
  font-family: 'Open Sans', sans-serif;
  font-size: 1.6rem;
  font-weight: 400;
}
h1 {
  margin-bottom: 0.5em;
  font-size: 3.6rem;
}
p {
  margin-bottom: 0.5em;
  font-size: 1.6rem;
  line-height: 1.6;
}
.button {
  display: inline-block;
  margin-top: 20px;
  padding: 8px 25px;
  border-radius: 4px;
}
.button-primary {
  position: relative;
  background-color: #c0ca33;
  color: #fff;
  font-size: 1.8rem;
  font-weight: 700;
  transition: color 0.3s ease-in;
  z-index: 1;
}
.button-primary:hover {
  color: #c0ca33;
  text-decoration: none;
}
.button-primary::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  top: 0;
  background-color: #fff;
  border-radius: 4px;
  opacity: 0;
  -webkit-transform: scaleX(0.8);
  -ms-transform: scaleX(0.8);
  transform: scaleX(0.8);
  transition: all 0.3s ease-in;
  z-index: -1;
}
.button-primary:hover::after {
  opacity: 1;
  -webkit-transform: scaleX(1);
  -ms-transform: scaleX(1);
  transform: scaleX(1);
}
.overlay::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  top: 0;
  background-color: rgba(0, 0, 0, .3);
}
.header-area {
  position: relative;
  height: 100vh;
  background: #5bc0de;
  background-attachment: fixed;
  background-position: center center;
  background-repeat: no-repear;
  background-size: cover;
}
.banner {
  display: flex;
  align-items: center;
  position: relative;
  height: 100%;
  color: #fff;
  text-align: center;
  z-index: 1;
}
.banner h1 {
  font-weight: 800;
}
.banner p {
  font-weight: 700;
}
.navbar {
  position: absolute;
  left: 0;
  top: 0;
  padding: 0;
  width: 100%;
  transition: background 0.6s ease-in;
  z-index: 99999;
}
.navbar .navbar-brand {
  font-family: 'Lobster', cursive;
  font-size: 2.5rem;
}
.navbar .navbar-toggler {
  position: relative;
  height: 50px;
  width: 50px;
  border: none;
  cursor: pointer;
  outline: none;
}
.navbar .navbar-toggler .menu-icon-bar {
  position: absolute;
  left: 15px;
  right: 15px;
  height: 2px;
  background-color: #fff;
  opacity: 0;
  -webkit-transform: translateY(-1px);
  -ms-transform: translateY(-1px);
  transform: translateY(-1px);
  transition: all 0.3s ease-in;
}
.navbar .navbar-toggler .menu-icon-bar:first-child {
  opacity: 1;
  -webkit-transform: translateY(-1px) rotate(45deg);
  -ms-sform: translateY(-1px) rotate(45deg);
  transform: translateY(-1px) rotate(45deg);
}
.navbar .navbar-toggler .menu-icon-bar:last-child {
  opacity: 1;
  -webkit-transform: translateY(-1px) rotate(135deg);
  -ms-sform: translateY(-1px) rotate(135deg);
  transform: translateY(-1px) rotate(135deg);
}
.navbar .navbar-toggler.collapsed .menu-icon-bar {
  opacity: 1;
}
.navbar .navbar-toggler.collapsed .menu-icon-bar:first-child {
  -webkit-transform: translateY(-7px) rotate(0);
  -ms-sform: translateY(-7px) rotate(0);
  transform: translateY(-7px) rotate(0);
}
.navbar .navbar-toggler.collapsed .menu-icon-bar:last-child {
  -webkit-transform: translateY(5px) rotate(0);
  -ms-sform: translateY(5px) rotate(0);
  transform: translateY(5px) rotate(0);
}
.navbar-dark .navbar-nav .nav-link {
  position: relative;
  color: #fff;
  font-size: 1.6rem;
}
.navbar-dark .navbar-nav .nav-link:focus, .navbar-dark .navbar-nav .nav-link:hover {
  color: #fff;
}
.navbar .dropdown-menu {
  padding: 0;
  background-color: rgba(0, 0, 0, .9);
}
.navbar .dropdown-menu .dropdown-item {
  position: relative;
  padding: 10px 20px;
  color: #fff;
  font-size: 1.4rem;
  border-bottom: 1px solid rgba(255, 255, 255, .1);
  transition: color 0.2s ease-in;
}
.navbar .dropdown-menu .dropdown-item:last-child {
  border-bottom: none;
}
.navbar .dropdown-menu .dropdown-item:hover {
  background: transparent;
  color: #c0ca33;
}
.navbar .dropdown-menu .dropdown-item::before {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  top: 0;
  width: 5px;
  background-color: #c0ca33;
  opacity: 0;
  transition: opacity 0.2s ease-in;
}
.navbar .dropdown-menu .dropdown-item:hover::before {
  opacity: 1;
}
.navbar.fixed-top {
  position: fixed;
  -webkit-animation: navbar-animation 0.6s;
  animation: navbar-animation 0.6s;
  background-color: rgba(0, 0, 0, .9);
}
.navbar.fixed-top.navbar-dark .navbar-nav .nav-link.active {
  color: #c0ca33;
}
.navbar.fixed-top.navbar-dark .navbar-nav .nav-link::after {
  background-color: #c0ca33;
}
.content {
  padding: 120px 0;
}
@media screen and (max-width: 768px) {
  .navbar-brand {
    margin-left: 20px;
  }
  .navbar-nav {
    padding: 0 20px;
    background-color: rgba(0, 0, 0, .9);
  }
  .navbar.fixed-top .navbar-nav {
    background: transparent;
  }
}
@media screen and (min-width: 767px) {
  .banner {
    padding: 0 150px;
  }
  .banner h1 {
    font-size: 5rem;
  }
  .banner p {
    font-size: 2rem;
  }
  .navbar-dark .navbar-nav .nav-link {
    padding: 23px 15px;
  }
  .navbar-dark .navbar-nav .nav-link::after {
    content: '';
    position: absolute;
    bottom: 15px;
    left: 30%;
    right: 30%;
    height: 1px;
    background-color: #fff;
    -webkit-transform: scaleX(0);
    -ms-transform: scaleX(0);
    transform: scaleX(0);
    transition: transform 0.1s ease-in;
  }
  .navbar-dark .navbar-nav .nav-link:hover::after {
    -webkit-transform: scaleX(1);
    -ms-transform: scaleX(1);
    transform: scaleX(1);
  }
  .dropdown-menu {
    min-width: 200px;
    -webkit-animation: dropdown-animation 0.3s;
    animation: dropdown-animation 0.3s;
    -webkit-transform-origin: top;
    -ms-transform-origin: top;
    transform-origin: top;
  }
}
@-webkit-keyframes navbar-animation {
  0% {
    opacity: 0;
    -webkit-transform: translateY(-100%);
    -ms-transform: translateY(-100%);
    transform: translateY(-100%);
  }
  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }
}
@keyframes navbar-animation {
  0% {
    opacity: 0;
    -webkit-transform: translateY(-100%);
    -ms-transform: translateY(-100%);
    transform: translateY(-100%);
  }
  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }
}
@-webkit-keyframes dropdown-animation {
  0% {
    -webkit-transform: scaleY(0);
    -ms-transform: scaleY(0);
    transform: scaleY(0);
  }
  75% {
    -webkit-transform: scaleY(1.1);
    -ms-transform: scaleY(1.1);
    transform: scaleY(1.1);
  }
  100% {
    -webkit-transform: scaleY(1);
    -ms-transform: scaleY(1);
    transform: scaleY(1);
  }
}
@keyframes dropdown-animation {
  0% {
    -webkit-transform: scaleY(0);
    -ms-transform: scaleY(0);
    transform: scaleY(0);
  }
  75% {
    -webkit-transform: scaleY(1.1);
    -ms-transform: scaleY(1.1);
    transform: scaleY(1.1);
  }
  100% {
    -webkit-transform: scaleY(1);
    -ms-transform: scaleY(1);
    transform: scaleY(1);
  }
}

.how-section1{
  margin-top:-15%;
  padding: 10%;
}
.how-section1 h4{
  color: #ffa500;
  font-weight: bold;
  font-size: 30px;
}
.how-section1 .subheading{
  color: #3931af;
  font-size: 20px;
}
.how-section1 .row
{
  margin-top: 10%;
}
.how-img
{
  text-align: center;
}
.how-img img{
  width: 40%;
}
/*============ Rotate Bar style ============*/
.p0{
  padding: 0 !important;
}
ul, ol, li{
  margin: 0;
  padding: 0;
  list-style: none;
}
a, a:hover,a:focus{
  display: inline-block;
  outline: none;
  text-decoration: none;
}
.rotate-bar {
  background: #404041;
  height: 60px;
  overflow-x: hidden;
}
.title {
  background: #e51937 none repeat scroll 0 0;
  color: #ffffff;
  font-size: 18px;
  font-weight: normal;
  line-height: 60px;
  padding-right: 35px;
  position: relative;
  text-align: right;
  text-transform: uppercase;
}
.title::after {
  background: #e51937;
  bottom: 0;
  content: "";
  display: block;
  height: 60px;
  position: absolute;
  right: -29px;
  top: 0;
  width: 50px;
  transform: skew(-30deg);
}
.tab-menu{
  position: relative;
}
.tab-menu ul li{
  float: left;
  border-right: 1px solid #e51937;
  transform: skew(-30deg);
}
.tab-menu ul li a {
  color: #ffffff;
  display: block;
  font-size: 18px;
  font-weight: normal;
  line-height: 60px;
  padding: 0 35px;
  text-transform: uppercase;
  -webkit-transition: all 700ms ease;
  -moz-transition: all 700ms ease;
  -ms-transition: all 700ms ease;
  -o-transition: all 700ms ease;
  transition: all 700ms ease;
}
.tab-menu ul li a:hover,
.tab-menu ul li.active a{
  background: #e51937;
}
.tab-menu ul li a span{
  transform: skew(30deg);
  display: block;
}
.panel__avatar {
  overflow: hidden;
  .circle-img-wrap(250);
  .border(8, @blue);
  margin: auto;
  .margin-16();
  cursor: pointer;
  transition: all .3s linear;



  &:hover {
    .card();
  }

}

.about__wrap {
  .row-flex();
  .justify-bet();
}

.about__item {
  .col();
  .beam(4);
}
.panel{
  flex-direction: column;
  .justify-bet();
}

.panel__header {
  .margin-16();
  .center-align();
}

.panel__title {
  font-family: @ff-hoefler-text;
  .rem-size(48);
  .c(@green);
  .line-height-rem(50);
}

.panel__subtitle {
  font-family: @ff-hoefler-text;
  .rem-size(38);
  .c(@red);
  .line-height-rem(40);
}

.panel__contents {
  font-family: @ff-hoefler-text;
  p {
    .rem-size-mb(24);
    .c(dark, @green_color);
  }
}

.panel__footer {
  .center-align();
  .margin-24();

  .but{
    .button(55, 25, @deep-orange, @white,{
    font-family: @ff-monospaceCourier;
    .rem-size(28);
    .wide(28, 120);
    text-transform: uppercase;
    .display-container();
    padding-left: 35px;
    });

    &::before {
      content: "";
      display: block;
      .width(10);
      .height(10);
      .round(5);
      .bgc(light, @yellow);
      position: absolute;
      top: 50%;
      left: 15px;
      transform: translateY(-50%);
    }
  }
}
.how-img {

  img {
    .border(10, @amber);
  }
}




jQuery(function($) {
    $(window).on('scroll', function() {
        if ($(this).scrollTop() >= 200) {
            $('.navbar').addClass('fixed-top');
        } else if ($(this).scrollTop() == 0) {
            $('.navbar').removeClass('fixed-top');
        }
    });

    function adjustNav() {
        var winWidth = $(window).width(),
            dropdown = $('.dropdown'),
            dropdownMenu = $('.dropdown-menu');

        if (winWidth >= 768) {
            dropdown.on('mouseenter', function() {
                $(this).addClass('show')
                    .children(dropdownMenu).addClass('show');
            });

            dropdown.on('mouseleave', function() {
                $(this).removeClass('show')
                    .children(dropdownMenu).removeClass('show');
            });
        } else {
            dropdown.off('mouseenter mouseleave');
        }
    }

    $(window).on('resize', adjustNav);

    adjustNav();
});
