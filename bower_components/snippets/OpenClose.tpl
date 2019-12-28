<body>

    <a href="#" class="button">
        <span class="menu">
            <b>menu</b>
        </span>
    </a>

    <ul class="sub-menu">
        <li>Home</li>
        <li>About</li>
        <li>Blog</li>
        <li>Contact</li>
    </ul>

</body>


@import url(https://fonts.googleapis.com/css?family=Open+Sans:600,300);
.menu, .menu:before, .menu:after {
    background: white;
    width: 30px;
    height: 3px;
}

@-webkit-keyframes menu-hover-top-over {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(8px);
                        transform: translateY(8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}

@keyframes menu-hover-top-over {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(8px);
                        transform: translateY(8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}
@-webkit-keyframes menu-hover-bottom-over {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(-8px);
                        transform: translateY(-8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}
@keyframes menu-hover-bottom-over {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(-8px);
                        transform: translateY(-8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}
@-webkit-keyframes menu-load-state-top {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(8px);
                        transform: translateY(8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}
@keyframes menu-load-state-top {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(8px);
                        transform: translateY(8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}
@-webkit-keyframes menu-load-state-bottom {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(-8px);
                        transform: translateY(-8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}
@keyframes menu-load-state-bottom {
    0% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
    50% {
        -webkit-transform: translateY(-8px);
                        transform: translateY(-8px);
    }
    100% {
        -webkit-transform: translateY(0);
                        transform: translateY(0);
    }
}
@-webkit-keyframes menu-active-slide {
    0% {
        -webkit-transform: translateX(-10px);
                        transform: translateX(-10px);
    }
    100% {
        -webkit-transform: translateX(0);
                        transform: translateX(0);
    }
}
@keyframes menu-active-slide {
    0% {
        -webkit-transform: translateX(-10px);
                        transform: translateX(-10px);
    }
    100% {
        -webkit-transform: translateX(0);
                        transform: translateX(0);
    }
}
@-webkit-keyframes top-rot-in {
    0% {
        -webkit-transform: rotate(0deg);
                        transform: rotate(0deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
    100% {
        -webkit-transform: rotate(45deg);
                        transform: rotate(45deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
}
@keyframes top-rot-in {
    0% {
        -webkit-transform: rotate(0deg);
                        transform: rotate(0deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
    100% {
        -webkit-transform: rotate(45deg);
                        transform: rotate(45deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
}
@-webkit-keyframes bot-rot-in {
    0% {
        -webkit-transform: rotate(0deg);
                        transform: rotate(0deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
    100% {
        -webkit-transform: rotate(-45deg);
                        transform: rotate(-45deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
}
@keyframes bot-rot-in {
    0% {
        -webkit-transform: rotate(0deg);
                        transform: rotate(0deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
    100% {
        -webkit-transform: rotate(-45deg);
                        transform: rotate(-45deg);
        -webkit-transform-origin: left;
                        transform-origin: left;
    }
}
body {
    font-family: 'Open Sans', sans-serif;
    color: white;
}
body a {
    color: white;
    text-decoration: none;
}

.button {
    padding: 10px;
    height: 30px;
    width: 30px;
    display: block;
    position: relative;
    background: #ed2fd3;
    /* Old browsers */
    background: linear-gradient(135deg, #ed2fd3 0%, #001e8e 100%);
    /* W3C */
}

.menu {
    position: absolute;
    top: 24px;
}
.menu:before {
    content: '';
    position: absolute;
    top: -8px;
    -webkit-animation: menu-load-state-top .5s;
                    animation: menu-load-state-top .5s;
}
.menu:after {
    content: '';
    position: absolute;
    top: 8px;
    left: 0px;
    -webkit-animation: menu-load-state-bottom .5s;
                    animation: menu-load-state-bottom .5s;
}
.menu b {
    opacity: 0;
    top: -13px;
    left: 2px;
    font-size: .55em;
    line-height: 1em;
    position: relative;
    transition: all 0.15s 0.15s ease-in;
    transition-delay: .5s;
}

.menu:hover {
    background: transparent;
    transition: all 0.15s 0 ease-out;
}
.menu:hover:before {
    -webkit-animation: menu-hover-top-over .5s .5s forwards;
                    animation: menu-hover-top-over .5s .5s forwards;
}
.menu:hover:after {
    -webkit-animation: menu-hover-bottom-over .5s .5s forwards;
                    animation: menu-hover-bottom-over .5s .5s forwards;
}
.menu:hover b {
    opacity: 1;
}

.sub-menu {
    font-weight: 300;
    font-size: 1.5em;
    list-style-type: none;
    padding: 10px 20px;
    width: 200px;
    background: #001e8e;
    /* Old browsers */
    background: linear-gradient(to bottom, #001e8e 0%, #ed2fd3 100%);
    /* W3C */
    margin: 0;
    position: fixed;
    top: 8px;
    left: 65px;
    transition: opacity 0.25s ease;
    opacity: 0;
}
.sub-menu li {
    line-height: 60px;
    border-bottom: 1px solid white;
}
.sub-menu li:last-child {
    border-bottom: none;
}

.active .menu {
    background: transparent;
}
.active .menu:before {
    top: -10px;
    left: 5px;
    -webkit-animation: top-rot-in .5s forwards;
                    animation: top-rot-in .5s forwards;
}
.active .menu:after {
    top: 10px;
    left: 5px;
    -webkit-animation: bot-rot-in .5s forwards;
                    animation: bot-rot-in .5s forwards;
}
.active .menu b {
    opacity: 0;
    transition: all 0.10s 0 ease-out;
}
.active .sub-menu {
    opacity: 1;
    transition: opacity 0.25s ease;
    -webkit-animation: menu-active-slide .25s;
                    animation: menu-active-slide .25s;
}

$(".button").click(function(){
 $(this).closest("body").toggleClass("active");
});