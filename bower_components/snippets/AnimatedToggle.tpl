<nav role="navigation" class="nav">

    <a class="menu-toggle" href="#head-nav">
        <span aria-hidden="true" class="icon-menu"></span><span class="menu-toggle-text"> menu</span>
    </a>

    <ul id="main-menu" class="top-nav menu clearfix">
        <li class="menu-item">
            <a href="https://codepen.io">Home</a>
        </li>
        <li class="menu-item">
            <a href="https://codepen.io">About</a>
        </li>
        <li class="menu-item">
            <a href="https://codepen.io">Archives</a>
        </li>
        <li class="menu-item">
            <a href="https://codepen.io">Categories</a>
            <ul class="sub-menu">
                <li class="menu-item">
                    <a href="https://codepen.io">Reading</a>
                </li>
                <li class="menu-item">
                    <a href="https://codepen.io">Writing</a>
                </li>
                <li class="menu-item">
                    <a href="https://codepen.io">Arithmatic</a>
                </li>
                <li class="menu-item">
                    <a href="https://codepen.io">Something Long</a>
                </li>
                <li class="menu-item">
                    <a href="https://codepen.io">Something Else</a>
                </li>
            </ul>
        </li>
        <li class="menu-item">
            <a href="https://codepen.io">Contact</a>
        </li>
    </ul>

</nav>



@charset "UTF-8";
/****
SETUP
****/
@import url(https://fonts.googleapis.com/css?family=Quattrocento+Sans);
/*
There used to be a menu icon loaded as a (part of a wasteful) font here. It isn't hosted anymore. Such is life.
*/
[class^="icon-"]:before, [class*=" icon-"]:before {
    font-style: normal;
    speak: none;
    font-weight: normal;
    vertical-align: top;
}

.icon-menu:before {
    content: "🍔";
}

body {
    background: #ddc;
    font-family: 'Quattrocento Sans', Helmet, Freesans, Tahoma, Geneva, sans-serif;
}

a {
    -moz-transition: color 800ms ease-in-out, background 800ms ease-in-out;
    -o-transition: color 800ms ease-in-out, background 800ms ease-in-out;
    -webkit-transition: color 800ms ease-in-out, background 800ms ease-in-out;
    transition: color 800ms ease-in-out, background 800ms ease-in-out;
}

.nav {
    padding: 2em 0;
    font-size: 1em;
    letter-spacing: 0.1em;
    text-align: center;
}
.nav .menu-toggle {
    position: relative;
    z-index: 2;
    display: block;
    margin: 0;
    padding: 0.5em 0;
    background-color: #ddc;
    text-decoration: none;
    text-align: center;
    font-size: 1.4em;
    color: #333;
}
.nav .menu-toggle:hover, .nav .menu-toggle:focus {
    color: #eee;
    background-color: #2e2e2e;
}
.nav .menu-toggle-text {
    font-size: 0.55em;
    display: block;
}
.no-js .nav .menu-toggle {
    display: none;
}
.nav .expanded-menu-toggle {
    color: #eeeeaa;
    background-color: #2e2e2e;
}
.no-fontface .nav .icon-menu:before {
    display: none;
}

/* .menu is visually hidden by default */
.menu {
    position: relative;
    z-index: 1;
    background-color: #333;
    border: 0;
    margin: -1px auto;
    overflow: hidden;
    padding: 0;
    max-height: 1px;
    min-height: 0;
    clip: rect(0 0 0 0);
    -moz-box-shadow: inset 0 0 3px 3px rgba(0, 0, 0, 0.2);
    -webkit-box-shadow: inset 0 0 3px 3px rgba(0, 0, 0, 0.2);
    box-shadow: inset 0 0 3px 3px rgba(0, 0, 0, 0.2);
    -moz-transition: max-height 600ms ease-out, min-height 600ms ease-in, padding 600ms ease-in;
    -o-transition: max-height 600ms ease-out, min-height 600ms ease-in, padding 600ms ease-in;
    -webkit-transition: max-height 600ms ease-out, min-height 600ms ease-in, padding 600ms ease-in;
    transition: max-height 600ms ease-out, min-height 600ms ease-in, padding 600ms ease-in;
    /* end .menu li */
}
.menu li {
    /* no sub menus for mobile */
}
.menu li a {
    display: block;
    padding: 10px 0;
    background-color: transparent;
    text-decoration: none;
    text-align: center;
    font-size: 1.2em;
    color: #eee;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
}
.menu li a:hover, .menu li a:focus {
    color: #eeeeaa;
    background: #4d4d4d;
}
.menu li ul.sub-menu, .menu li ul.children {
    display: none;
}

/* end .menu */
.no-js .menu, .expanded-mobile-menu {
    -moz-transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 400ms ease-in;
    -o-transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 400ms ease-in;
    -webkit-transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 400ms ease-in;
    transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 400ms ease-in;
    /*min/max heights allow me to css transition to height auto for WordPress menus with unknown number of items*/
    clip: auto;
    min-height: 8em;
    max-height: 100em;
    padding: 0.5em 0;
}

@media only screen and (min-width: 30.1em) {
    /*481 ish px*/
    .menu li {
        float: left;
        width: 50%;
    }
}
@media only screen and (min-width: 48em) {
    .nav .menu-toggle {
        display: none;
    }

    .menu, .no-js .menu, .expanded-mobile-menu {
        /* no longer hidden by default! */
        margin: 0;
        min-height: 0;
        max-height: 999em;
        -moz-border-radius: 0;
        -webkit-border-radius: 0;
        border-radius: 0;
        overflow: visible;
        padding: 0.7em 0;
        background: #333;
        -moz-box-shadow: inset 0 0 3px 3px rgba(0, 0, 0, 0.2);
        -webkit-box-shadow: inset 0 0 3px 3px rgba(0, 0, 0, 0.2);
        box-shadow: inset 0 0 3px 3px rgba(0, 0, 0, 0.2);
        /* end .menu ul li */
    }
    .menu li, .no-js .menu li, .expanded-mobile-menu li {
        float: none;
        width: auto;
        display: inline-block;
        position: relative;
        vertical-align: middle;
        /* DROP DOWNS */
        /* showing sub-menus */
    }
    .lt-ie8 .menu li, .lt-ie8 .no-js .menu li, .lt-ie8 .expanded-mobile-menu li {
        /* inline-block fix for old ie (relevant if they're served larger media queries in an IE stylesheet or something similar...*/
        display: inline;
        zoom: 1;
    }
    .menu li a, .no-js .menu li a, .expanded-mobile-menu li a {
        padding: 0.3em 1em;
        color: #eee;
    }
    .menu li a:hover, .menu li a:focus, .no-js .menu li a:hover, .no-js .menu li a:focus, .expanded-mobile-menu li a:hover, .expanded-mobile-menu li a:focus {
        color: #eeeeaa;
        background: #383838;
    }
    .menu li ul.sub-menu,
    .menu li ul.children, .no-js .menu li ul.sub-menu,
    .no-js .menu li ul.children, .expanded-mobile-menu li ul.sub-menu,
    .expanded-mobile-menu li ul.children {
        display: block;
        position: absolute;
        z-index: 2;
        top: 100%;
        left: 0;
        white-space: nowrap;
        -moz-transition: max-height 400ms ease-out, min-height 500ms ease-in, padding 500ms ease-out, opacity 500ms ease-in;
        -o-transition: max-height 400ms ease-out, min-height 500ms ease-in, padding 500ms ease-out, opacity 500ms ease-in;
        -webkit-transition: max-height 400ms ease-out, min-height 500ms ease-in, padding 500ms ease-out, opacity 500ms ease-in;
        transition: max-height 400ms ease-out, min-height 500ms ease-in, padding 500ms ease-out, opacity 500ms ease-in;
        background: #383838;
        text-align: left;
        -moz-border-radius: 0 4px 4px 4px;
        -webkit-border-radius: 0;
        border-radius: 0 4px 4px 4px;
        /* visually hidden */
        opacity: 0;
        border: 0;
        margin: -1px 0;
        overflow: hidden;
        padding: 0;
        max-height: 1px;
        min-height: 0;
    }
    .menu li ul.sub-menu li,
    .menu li ul.children li, .no-js .menu li ul.sub-menu li,
    .no-js .menu li ul.children li, .expanded-mobile-menu li ul.sub-menu li,
    .expanded-mobile-menu li ul.children li {
        display: block;
        padding: 0.2em 0.4em 0;
        /* could go deeper here... */
    }
    .menu li ul.sub-menu li a,
    .menu li ul.children li a, .no-js .menu li ul.sub-menu li a,
    .no-js .menu li ul.children li a, .expanded-mobile-menu li ul.sub-menu li a,
    .expanded-mobile-menu li ul.children li a {
        font-size: 1em;
        padding: 0.2em 0.5em 0.2em 0.8em;
        display: block;
        line-height: 1.5;
        margin: 0;
        text-align: left;
        background: transparent;
    }
    .menu li ul.sub-menu li a:hover, .menu li ul.sub-menu li a:focus,
    .menu li ul.children li a:hover,
    .menu li ul.children li a:focus, .no-js .menu li ul.sub-menu li a:hover, .no-js .menu li ul.sub-menu li a:focus,
    .no-js .menu li ul.children li a:hover,
    .no-js .menu li ul.children li a:focus, .expanded-mobile-menu li ul.sub-menu li a:hover, .expanded-mobile-menu li ul.sub-menu li a:focus,
    .expanded-mobile-menu li ul.children li a:hover,
    .expanded-mobile-menu li ul.children li a:focus {
        background: #3d3d3d;
    }
    .menu li ul.sub-menu li:last-child a,
    .menu li ul.children li:last-child a, .no-js .menu li ul.sub-menu li:last-child a,
    .no-js .menu li ul.children li:last-child a, .expanded-mobile-menu li ul.sub-menu li:last-child a,
    .expanded-mobile-menu li ul.children li:last-child a {
        border-bottom: 0;
    }
    .menu li:hover ul, .menu li.focused ul, .no-js .menu li:hover ul, .no-js .menu li.focused ul, .expanded-mobile-menu li:hover ul, .expanded-mobile-menu li.focused ul {
        -moz-transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 500ms ease-out, opacity 800ms ease-out;
        -o-transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 500ms ease-out, opacity 800ms ease-out;
        -webkit-transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 500ms ease-out, opacity 800ms ease-out;
        transition: max-height 800ms ease-in, min-height 500ms ease-out, padding 500ms ease-out, opacity 800ms ease-out;
        /* again using min/max heights to deal with unknown length of lists */
        min-height: 8em;
        max-height: 100em;
        padding: 0.4em 0;
        opacity: 1;
    }
    .menu li:hover ul ul,
    .menu li.focused ul ul,
    .no-js .menu li:hover ul ul,
    .no-js .menu li.focused ul ul,
    .expanded-mobile-menu li:hover ul ul,
    .expanded-mobile-menu li.focused ul ul {
        min-height: 0;
        padding: 0;
    }
    .menu li:hover > a,
    .no-js .menu li:hover > a,
    .expanded-mobile-menu li:hover > a {
        background: #383838;
    }

    /* end .menu */
}
/* end media query*/

/*
Responsive nav menu with sub menus only on larger screens.

This is more than three years old now - please take it with a big pinch of salt - there are better ways to achieve the same thing!
*/

/**********
MOBILE MENU
**********/
$('.menu-toggle').click(function(e){
    //click event for left clicks only! http://www.jacklmoore.com/notes/click-events
    if (!(e.which > 1 || e.shiftKey || e.altKey || e.metaKey)) {
        e.preventDefault();
        if($(this).parent().find('.menu').hasClass('expanded-mobile-menu')){
            $(this).removeClass('expanded-menu-toggle').parent().removeClass('nav-expanded').find('.menu').removeClass('expanded-mobile-menu');
        }else{
            $(this).addClass('expanded-menu-toggle').parent().addClass('nav-expanded').find('.menu').addClass('expanded-mobile-menu');
        }
    }
});




