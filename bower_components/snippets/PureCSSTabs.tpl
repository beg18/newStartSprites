<div class="menu-wrapper">

    <a href="#menu" class="menu-link">	Menu<span class="ico-caret-down right" aria-hidden="true"></span>
    </a>
    <nav id="menu" role="navigation">
        <div class="menu">
            <ul  class="menu">
                <li>
                    <a href="#">Team</a>
                </li>
                <li  class=" current-menu-item">
                    <a href="#">News</a>
                </li>
                <li  class="has-subnav">
                    <a href="#">Our services</a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#">Webdesign</a>
                        </li>
                        <li>
                            <a href="#">Graphic identity</a>
                        </li>
                        <li>
                            <a href="#">Copywriting</a>
                        </li>
                        <li>
                            <a href="#">SEO & a longer menu item</a>
                        </li>
                        <li>
                            <a href="#">Social networking</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">Our Work</a>
                </li>
                <li>
                    <a href="#">Contact us</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div class="content">
    <p>A responsive navigation menu for a project of mine. I needed the top level links (team, news, our services, our work, contact us) to be still clickable (because they send the user to a special page) so I needed to "split" the "presentation" link with an arrow for the responsive part.</p>
    <p> Also note that font for the arrow are loaded from my dropbox so it won't appear on Firefox and IE (crossdomain issues I guess)</p>
</div>


body,
html {
    height: 100% ;
    /* correct bug for chrome display on codepen ? */
}
/* colors mixins and all the good stuff */
nav {
    display: block;
}
.right {
    float: right;
    margin-left: 1em;
}
/* icons */
@font-face {
    font-family: 'icomoon';
    src: url('https://dl.dropbox.com/u/26865764/icomoon.eot');
    src: url('https://dl.dropbox.com/u/26865764/icomoon.eot?#iefix') format('embedded-opentype'), url('https://dl.dropbox.com/u/26865764/icomoon.dev.svg#icomoon') format('svg'), url('https://dl.dropbox.com/u/26865764/icomoon.woff') format('woff'), url('https://dl.dropbox.com/u/26865764/icomoon.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
}
.ico-heart:before,
.ico-letter:before,
.ico-file:before,
.ico-real:before,
.ico-pen:before,
.ico-user:before,
.ico-rocket:before,
.ico-arrow-right:before,
.ico-arrow-left:before,
.ico-arrow-left-2:before,
.ico-arrow-right-2:before,
.ico-caret-down:before,
.ico-caret-up:before,
.ico-caret-left:before,
.ico-caret-right:before,
.ico-facebook:before,
.ico-twitter:before,
.ico-google-plus:before {
    font-family: 'icomoon';
    speak: none;
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
}
.ico-caret-down:before {
    content: "\f0d7";
}
.ico-caret-up:before {
    content: "\f0d8";
}
/* ----------------------------- */
/* == Menu */
/* ----------------------------- */
.menu-wrapper {
    position: relative;
    z-index: 10;
    font-family: 'Economica', sans-serif;
    font-size: 1.857em;
    text-transform: uppercase;
    padding-top: 2px;
    padding-bottom: 2px;
    background: #b92120;
    /* the hidden link for RWD nav */
    /* the rest of the menu lvl 1 */
    /* current links */
    /* submenu ! */
    /* unhide the 2nd level */
}
.menu-wrapper .menu {
    margin: 0;
    padding-left: 0;
    list-style: none;
    text-align: center;
}
.menu-wrapper .menu > li {
    position: relative;
    padding: 0.7em 0;
    display: inline-block;
}
.menu-wrapper ul.menu,
.menu-wrapper a.menu-link {
    border-top: 1px dashed #dd4949;
    border-bottom: 1px dashed #dd4949;
}
.menu-wrapper a.menu-link {
    display: none;
    padding: 0.7em 0;
    background: #b92120;
}
.menu-wrapper a {
    display: block;
    position: relative;
    padding: 0 0.5em;
    margin: 0 0.2em;
    line-height: 1.3em;
    color: #ffffff;
    text-decoration: none;
    border-bottom: 1px solid transparent;
}
.menu-wrapper a:hover {
    border-bottom: 1px solid rgba(255, 255, 255, 0.9);
    transition: all 0.5s;
}
.menu-wrapper .menu > .current-menu-item > a,
.menu-wrapper .menu > .current-menu-ancestor > a {
    position: relative;
    z-index: 12;
    background: #f5d4d4;
    color: #b92120;
    border-bottom: 1px solid transparent;
}
.menu-wrapper .menu > .current-menu-item > a:hover,
.menu-wrapper .menu > .current-menu-ancestor > a:hover {
    background: #fffdfd;
}
.menu-wrapper .menu > .current-menu-item > a:hover:after,
.menu-wrapper .menu > .current-menu-ancestor > a:hover:after {
    border-top-color: #fffdfd;
}
.menu-wrapper .menu > .current-menu-item > a:after,
.menu-wrapper .menu > .current-menu-ancestor > a:after {
    top: 100%;
    border: solid transparent;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: rgba(255, 255, 255, 0);
    border-top-color: #f5d4d4;
    border-width: 5px;
    left: 50%;
    margin-left: -5px;
}
.menu-wrapper li + li a:before {
    content: "*";
    position: absolute;
    left: -0.5em;
    top: 0.2em;
    color: #ffffff;
    opacity: 0.8;
    font-family: Arial, Verdana, sans-serif;
}
.menu-wrapper .sub-menu {
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    margin: 18px 0 0 -0.7em;
    padding: 3px 0 0 0;
    position: absolute;
    max-height: 0em;
    overflow: hidden;
    list-style: none outside none;
    text-align: left;
    text-transform: none;
}
.menu-wrapper .sub-menu li {
    display: block;
    background: #9b1c1b;
    margin-left: 0.7em;
    margin-right: 0.7em;
}
.menu-wrapper .sub-menu a {
    margin: 0;
    white-space: nowrap;
    line-height: 1.8em;
    border: none;
}
.menu-wrapper .sub-menu a:hover {
    background: #781515;
}
.menu-wrapper .sub-menu li:last-child {
    padding-bottom: 0.26em;
}
.menu-wrapper .sub-menu li:last-child a {
    border-bottom: 1px dashed #dd4949;
}
.menu-wrapper li:hover .sub-menu {
    max-height: 30em;
    transition: max-height 0.5s;
}
/* Responsive Menu */
@media screen and (max-width: 768px) {
    .js .menu-wrapper nav[role=navigation] {
        overflow: hidden;
        max-height: 0em;
    }
    .js .menu-wrapper nav[role=navigation].active {
        max-height: 30em;
        transition: max-height 0.5s ease-out;
    }
    .menu-wrapper {
        /* unhide the 2nd level */
        /* styling the toggle menu */
        /* arrow to indicate that we have subnav*/
    }
    .menu-wrapper a.menu-link {
        display: block;
        width: auto;
        padding-right: 15px;
        padding-left: 10px;
        border: none;
        margin: 0;
    }
    .menu-wrapper a.menu-link:hover {
        background: #9b1c1b;
    }
    .menu-wrapper a.menu-link.active .ico-caret-down:before {
        content: "\f0d8";
    }
    .menu-wrapper .menu .menu {
        padding-bottom: 5px;
    }
    .menu-wrapper .menu li {
        display: block;
        border: 1px solid pink;
        border: none;
    }
    .menu-wrapper .menu > li {
        padding: 0px;
        border: none;
    }
    .menu-wrapper .menu > li + li {
        border-top: 1px dashed #dd4949;
    }
    .menu-wrapper .menu a {
        padding: 0.5em 0;
        margin: 0px;
        border: none;
    }
    .menu-wrapper .menu a:hover {
        background: #9b1c1b;
    }
    .menu-wrapper .menu .rightalign {
        float: none;
    }
    .menu-wrapper li + li a:before {
        content: "";
    }
    .menu-wrapper li:hover .sub-menu {
        max-height: 0em;
        transition: none;
    }
    .menu-wrapper .sub-menu {
        background: none;
        margin-left: 0px;
        margin-top: 1px;
        display: block;
        width: 100%;
    }
    .menu-wrapper .sub-menu li,
    .menu-wrapper .sub-menu li a {
        margin: 0;
        display: block;
        width: 100%;
    }
    .menu-wrapper .sub-menu a {
        padding-left: 0.8em;
    }
    .menu-wrapper .sub-menu a:hover {
        background: #781515;
    }
    .menu-wrapper .sub-menu li {
        border-bottom: 1px dashed #dd4949;
    }
    .menu-wrapper .sub-menu li:last-child {
        padding: 0;
    }
    .menu-wrapper .sub-menu li:last-child a {
        border: none;
    }
    .menu-wrapper .menu .has-subnav {
        position: relative;
    }
    .menu-wrapper li .sub-menu.active {
        max-height: 30em;
        overflow: visible;
        position: relative;
        z-index: 9;
        transition: max-height 0.5s ease-out;
    }
    .menu-wrapper .toggle-link {
        height: 67px;
        width: 60px;
        display: block;
        position: absolute;
        right: 0px;
        z-index: 200;
        font-size: 0em;
        cursor: pointer;
        font-family: 'icomoon';
        speak: none;
        font-style: normal;
        font-weight: normal;
        line-height: 1;
        -webkit-font-smoothing: antialiased;
    }
    .menu-wrapper .toggle-link:hover {
        transition: all 0.2s;
        background: #cf2524;
    }
    .menu-wrapper .menu .has-subnav > .toggle-link:after {
        content: "\f0d7";
        position: absolute;
        width: 50px;
        top: 50%;
        margin-top: -15px;
        bottom: 50%;
        right: 4px;
        font-size: 28px;
        color: #fff;
    }
    .menu-wrapper .menu .has-subnav > .toggle-link.active:after {
        content: "\f0d8";
        margin-top: -18px;
    }
}
.content {
    max-width: 950px;
    min-height: 500px;
    margin: 30px auto;
}




$(document).ready(function() {


/* the Responsive menu script */
 	$('body').addClass('js');
          var $menu = $('#menu'),
          	  $menulink = $('.menu-link'),
          	  $menuTrigger = $('.has-subnav > a');

    $menulink.click(function(e) {
            e.preventDefault();
            $menulink.toggleClass('active');
            $menu.toggleClass('active');
    });

    var add_toggle_links = function() {
     	if ($('.menu-link').is(":visible")){
     		if ($(".toggle-link").length > 0){
     		}
     		else{
     			$('.has-subnav > a').before('<span class="toggle-link"> Open submenu </span>');
     			$('.toggle-link').click(function(e) {
                    var $this = $(this);
                    $this.toggleClass('active').siblings('ul').toggleClass('active');
                });
     		}
     	}
        else{
            $('.toggle-link').empty();
        }
     }
    add_toggle_links();
    $(window).bind("resize", add_toggle_links);

        });














