<!-- ORIGINAL ARTICLE: https://tympanus.net/codrops/2013/04/19/responsive-multi-level-menu/ (using Demo 2) -->
<nav id="dl-menu" class="dl-menuwrapper nav-main">
        <button class="dl-trigger nav-handle">Menu</button>
        <ul class="dl-menu nav-main-list">
            <li class="nav-main-item">
                <a href="#">Fashion</a>
                <ul class="dl-submenu nav-sub-list">
                    <li class="nav-sub-item">
                        <a href="#">Men</a>
                        <ul class="dl-submenu nav-sub-sub">
                            <li class="nav-sub-item"><a href="#">Shirts</a></li>
                            <li class="nav-sub-item"><a href="#">Jackets</a></li>
                            <li class="nav-sub-item"><a href="#">Chinos &amp; Trousers</a></li>
                            <li class="nav-sub-item"><a href="#">Jeans</a></li>
                            <li class="nav-sub-item"><a href="#">T-Shirts</a></li>
                            <li class="nav-sub-item"><a href="#">Underwear</a></li>
                        </ul>
                    </li>
                    <li class="nav-sub-item">
                        <a href="#">Women</a>
                        <ul class="dl-submenu nav-sub-sub">
                            <li class="nav-sub-item"><a href="#">Jackets</a></li>
                            <li class="nav-sub-item"><a href="#">Knits</a></li>
                            <li class="nav-sub-item"><a href="#">Jeans</a></li>
                            <li class="nav-sub-item"><a href="#">Dresses</a></li>
                            <li class="nav-sub-item"><a href="#">Blouses</a></li>
                            <li class="nav-sub-item"><a href="#">T-Shirts</a></li>
                            <li class="nav-sub-item"><a href="#">Underwear</a></li>
                        </ul>
                    </li>
                    <li class="nav-sub-item">
                        <a href="#">Children</a>
                        <ul class="dl-submenu nav-sub-sub">
                            <li class="nav-sub-item"><a href="#">Boys</a></li>
                            <li class="nav-sub-item"><a href="#">Girls</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="nav-main-item">
                <a href="#">Electronics</a>
                <ul class="dl-submenu nav-sub-list">
                    <li class="nav-sub-item"><a href="#">Camera &amp; Photo</a></li>
                    <li class="nav-sub-item"><a href="#">TV &amp; Home Cinema</a></li>
                    <li class="nav-sub-item"><a href="#">Phones</a></li>
                    <li class="nav-sub-item"><a href="#">PC &amp; Video Games</a></li>
                </ul>
            </li>
            <li class="nav-main-item">
                <a href="#">Furniture</a>
                <ul class="dl-submenu nav-sub-list">
                    <li class="nav-sub-item">
                        <a href="#">Living Room</a>
                        <ul class="dl-submenu nav-sub-sub">
                            <li class="nav-sub-item"><a href="#">Sofas &amp; Loveseats</a></li>
                            <li class="nav-sub-item"><a href="#">Coffee &amp; Accent Tables</a></li>
                            <li class="nav-sub-item"><a href="#">Chairs &amp; Recliners</a></li>
                            <li class="nav-sub-item"><a href="#">Bookshelves</a></li>
                        </ul>
                    </li>
                    <li class="nav-sub-item">
                        <a href="#">Bedroom</a>
                        <ul class="dl-submenu nav-sub-sub">
                            <li class="nav-sub-item">
                                <a href="#">Beds</a>
                                <ul class="dl-submenu nav-sub-sub">
                                    <li class="nav-sub-item"><a href="#">Upholstered Beds</a></li>
                                    <li class="nav-sub-item"><a href="#">Divans</a></li>
                                    <li class="nav-sub-item"><a href="#">Metal Beds</a></li>
                                    <li class="nav-sub-item"><a href="#">Storage Beds</a></li>
                                    <li class="nav-sub-item"><a href="#">Wooden Beds</a></li>
                                    <li class="nav-sub-item"><a href="#">Children's Beds</a></li>
                                </ul>
                            </li>
                            <li class="nav-sub-item"><a href="#">Bedroom Sets</a></li>
                            <li class="nav-sub-item"><a href="#">Chests &amp; Dressers</a></li>
                        </ul>
                    </li>
                    <li class="nav-sub-item"><a href="#">Home Office</a></li>
                    <li class="nav-sub-item"><a href="#">Dining &amp; Bar</a></li>
                    <li class="nav-sub-item"><a href="#">Patio</a></li>
                </ul>
            </li>
            <li class="nav-main-item">
                <a href="#">Jewelry &amp; Watches</a>
                <ul class="dl-submenu nav-sub-list">
                    <li class="nav-sub-item"><a href="#">Fine Jewelry</a></li>
                    <li class="nav-sub-item"><a href="#">Fashion Jewelry</a></li>
                    <li class="nav-sub-item"><a href="#">Watches</a></li>
                    <li class="nav-sub-item">
                        <a href="#">Wedding Jewelry</a>
                        <ul class="dl-submenu nav-sub-sub">
                            <li class="nav-sub-item"><a href="#">Engagement Rings</a></li>
                            <li class="nav-sub-item"><a href="#">Bridal Sets</a></li>
                            <li class="nav-sub-item"><a href="#">Women's Wedding Bands</a></li>
                            <li class="nav-sub-item"><a href="#">Men's Wedding Bands</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>


    <h2>Adapted responsive menu from original article at <a href="https://tympanus.net/codrops/2013/04/19/responsive-multi-level-menu/">codrops</a>.</h2>


@import url(https://fonts.googleapis.com/css?family=Maven+Pro);
/*CSS Table of Contents:
--------------------------
#1: Line 12: Declare Variables
#2: Line 20: Original CSS with minor style changes (color and position) - lots of animation css can be deleted (five different animation options)
#3: Line 931: Additional CSS added to original
#4: Line 945: CSS for styling the menu

*/
/* #1: Declare variables
--------------------------------------------------------- */
/* width to begin showing full menu */
/* #2: Original CSS from Codrops article
--------------------------------------------------------- */
/* Common styles of menus */
.dl-menuwrapper {
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
    -webkit-perspective-origin: 50% 200%;
    -moz-perspective-origin: 50% 200%;
    perspective-origin: 50% 200%;
}

.dl-menuwrapper button {
    border: none;
    overflow: hidden;
    cursor: pointer;
    outline: none;
}

.dl-menuwrapper ul {
    padding: 0;
    list-style: none;
    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    transform-style: preserve-3d;
}

.dl-menuwrapper li {
    position: relative;
}

.dl-menuwrapper li a {
    display: block;
    position: relative;
    outline: none;
}

.no-touch .dl-menuwrapper li a:hover {
    background: rgba(255, 248, 213, 0.1);
}

.dl-menuwrapper li.dl-back > a {
    background: rgba(0, 0, 0, 0.2);
}

.dl-menuwrapper li.dl-back > a:after,
.dl-menuwrapper li > a:not(:only-child):after {
    position: absolute;
    content: '>';
    speak: none;
    -webkit-font-smoothing: antialiased;
}

.dl-menuwrapper li.dl-back > a:after {
    left: 10px;
    right: auto;
    color: white;
    -webkit-transform: rotate(180deg);
    -moz-transform: rotate(180deg);
    transform: rotate(180deg);
}

.dl-menuwrapper li > a:after {
    right: 10px;
    color: white;
}

.dl-menuwrapper .dl-menu {
    margin: 0;
    position: absolute;
    width: 100%;
    opacity: 0;
    pointer-events: none;
    -webkit-transform: translateY(10px);
    -moz-transform: translateY(10px);
    transform: translateY(10px);
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
}

.dl-menuwrapper .dl-menu.dl-menu-toggle {
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    transition: all 0.3s ease;
}

.dl-menuwrapper .dl-menu.dl-menuopen {
    opacity: 1;
    pointer-events: auto;
    -webkit-transform: translateY(0px);
    -moz-transform: translateY(0px);
    transform: translateY(0px);
}

/* Hide the inner submenus */
.dl-menuwrapper li .dl-submenu {
    display: none;
}

/*
When a submenu is openend, we will hide all li siblings.
For that we give a class to the parent menu called "dl-subview".
We also hide the submenu link.
The opened submenu will get the class "dl-subviewopen".
All this is done for any sub-level being entered.
*/
.dl-menu.dl-subview li,
.dl-menu.dl-subview li.dl-subviewopen > a,
.dl-menu.dl-subview li.dl-subview > a {
    display: none;
}

.dl-menu.dl-subview li.dl-subview,
.dl-menu.dl-subview li.dl-subview .dl-submenu,
.dl-menu.dl-subview li.dl-subviewopen,
.dl-menu.dl-subview li.dl-subviewopen > .dl-submenu,
.dl-menu.dl-subview li.dl-subviewopen > .dl-submenu > li {
    display: block;
}

/* Dynamically added submenu outside of the menu context */
.dl-menuwrapper > .dl-submenu {
    position: absolute;
    width: 100%;
    top: 50px;
    left: 0;
    margin: 0;
}

/* Animation classes for moving out and in */
.dl-menu.dl-animate-out-1 {
    -webkit-animation: MenuAnimOut1 0.4s;
    -moz-animation: MenuAnimOut1 0.4s;
    animation: MenuAnimOut1 0.4s;
}

.dl-menu.dl-animate-out-2 {
    -webkit-animation: MenuAnimOut2 0.3s ease-in-out;
    -moz-animation: MenuAnimOut2 0.3s ease-in-out;
    animation: MenuAnimOut2 0.3s ease-in-out;
}

.dl-menu.dl-animate-out-3 {
    -webkit-animation: MenuAnimOut3 0.4s ease;
    -moz-animation: MenuAnimOut3 0.4s ease;
    animation: MenuAnimOut3 0.4s ease;
}

.dl-menu.dl-animate-out-4 {
    -webkit-animation: MenuAnimOut4 0.4s ease;
    -moz-animation: MenuAnimOut4 0.4s ease;
    animation: MenuAnimOut4 0.4s ease;
}

.dl-menu.dl-animate-out-5 {
    -webkit-animation: MenuAnimOut5 0.4s ease;
    -moz-animation: MenuAnimOut5 0.4s ease;
    animation: MenuAnimOut5 0.4s ease;
}

@-webkit-keyframes MenuAnimOut1 {
    50% {
        -webkit-transform: translateZ(-250px) rotateY(30deg);
    }
    75% {
        -webkit-transform: translateZ(-372.5px) rotateY(15deg);
        opacity: .5;
    }
    100% {
        -webkit-transform: translateZ(-500px) rotateY(0deg);
        opacity: 0;
    }
}
@-webkit-keyframes MenuAnimOut2 {
    100% {
        -webkit-transform: translateX(-100%);
        opacity: 0;
    }
}
@-webkit-keyframes MenuAnimOut3 {
    100% {
        -webkit-transform: translateZ(300px);
        opacity: 0;
    }
}
@-webkit-keyframes MenuAnimOut4 {
    100% {
        -webkit-transform: translateZ(-300px);
        opacity: 0;
    }
}
@-webkit-keyframes MenuAnimOut5 {
    100% {
        -webkit-transform: translateY(40%);
        opacity: 0;
    }
}
@-moz-keyframes MenuAnimOut1 {
    50% {
        -moz-transform: translateZ(-250px) rotateY(30deg);
    }
    75% {
        -moz-transform: translateZ(-372.5px) rotateY(15deg);
        opacity: .5;
    }
    100% {
        -moz-transform: translateZ(-500px) rotateY(0deg);
        opacity: 0;
    }
}
@-moz-keyframes MenuAnimOut2 {
    100% {
        -moz-transform: translateX(-100%);
        opacity: 0;
    }
}
@-moz-keyframes MenuAnimOut3 {
    100% {
        -moz-transform: translateZ(300px);
        opacity: 0;
    }
}
@-moz-keyframes MenuAnimOut4 {
    100% {
        -moz-transform: translateZ(-300px);
        opacity: 0;
    }
}
@-moz-keyframes MenuAnimOut5 {
    100% {
        -moz-transform: translateY(40%);
        opacity: 0;
    }
}
@keyframes MenuAnimOut1 {
    50% {
        transform: translateZ(-250px) rotateY(30deg);
    }
    75% {
        transform: translateZ(-372.5px) rotateY(15deg);
        opacity: .5;
    }
    100% {
        transform: translateZ(-500px) rotateY(0deg);
        opacity: 0;
    }
}
@keyframes MenuAnimOut2 {
    100% {
        transform: translateX(-100%);
        opacity: 0;
    }
}
@keyframes MenuAnimOut3 {
    100% {
        transform: translateZ(300px);
        opacity: 0;
    }
}
@keyframes MenuAnimOut4 {
    100% {
        transform: translateZ(-300px);
        opacity: 0;
    }
}
@keyframes MenuAnimOut5 {
    100% {
        transform: translateY(40%);
        opacity: 0;
    }
}
.dl-menu.dl-animate-in-1 {
    -webkit-animation: MenuAnimIn1 0.3s;
    -moz-animation: MenuAnimIn1 0.3s;
    animation: MenuAnimIn1 0.3s;
}

.dl-menu.dl-animate-in-2 {
    -webkit-animation: MenuAnimIn2 0.3s ease-in-out;
    -moz-animation: MenuAnimIn2 0.3s ease-in-out;
    animation: MenuAnimIn2 0.3s ease-in-out;
}

.dl-menu.dl-animate-in-3 {
    -webkit-animation: MenuAnimIn3 0.4s ease;
    -moz-animation: MenuAnimIn3 0.4s ease;
    animation: MenuAnimIn3 0.4s ease;
}

.dl-menu.dl-animate-in-4 {
    -webkit-animation: MenuAnimIn4 0.4s ease;
    -moz-animation: MenuAnimIn4 0.4s ease;
    animation: MenuAnimIn4 0.4s ease;
}

.dl-menu.dl-animate-in-5 {
    -webkit-animation: MenuAnimIn5 0.4s ease;
    -moz-animation: MenuAnimIn5 0.4s ease;
    animation: MenuAnimIn5 0.4s ease;
}

@-webkit-keyframes MenuAnimIn1 {
    0% {
        -webkit-transform: translateZ(-500px) rotateY(0deg);
        opacity: 0;
    }
    20% {
        -webkit-transform: translateZ(-250px) rotateY(30deg);
        opacity: 0.5;
    }
    100% {
        -webkit-transform: translateZ(0px) rotateY(0deg);
        opacity: 1;
    }
}
@-webkit-keyframes MenuAnimIn2 {
    0% {
        -webkit-transform: translateX(-100%);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateX(0px);
        opacity: 1;
    }
}
@-webkit-keyframes MenuAnimIn3 {
    0% {
        -webkit-transform: translateZ(300px);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateZ(0px);
        opacity: 1;
    }
}
@-webkit-keyframes MenuAnimIn4 {
    0% {
        -webkit-transform: translateZ(-300px);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateZ(0px);
        opacity: 1;
    }
}
@-webkit-keyframes MenuAnimIn5 {
    0% {
        -webkit-transform: translateY(40%);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateY(0);
        opacity: 1;
    }
}
@-moz-keyframes MenuAnimIn1 {
    0% {
        -moz-transform: translateZ(-500px) rotateY(0deg);
        opacity: 0;
    }
    20% {
        -moz-transform: translateZ(-250px) rotateY(30deg);
        opacity: 0.5;
    }
    100% {
        -moz-transform: translateZ(0px) rotateY(0deg);
        opacity: 1;
    }
}
@-moz-keyframes MenuAnimIn2 {
    0% {
        -moz-transform: translateX(-100%);
        opacity: 0;
    }
    100% {
        -moz-transform: translateX(0px);
        opacity: 1;
    }
}
@-moz-keyframes MenuAnimIn3 {
    0% {
        -moz-transform: translateZ(300px);
        opacity: 0;
    }
    100% {
        -moz-transform: translateZ(0px);
        opacity: 1;
    }
}
@-moz-keyframes MenuAnimIn4 {
    0% {
        -moz-transform: translateZ(-300px);
        opacity: 0;
    }
    100% {
        -moz-transform: translateZ(0px);
        opacity: 1;
    }
}
@-moz-keyframes MenuAnimIn5 {
    0% {
        -moz-transform: translateY(40%);
        opacity: 0;
    }
    100% {
        -moz-transform: translateY(0);
        opacity: 1;
    }
}
@keyframes MenuAnimIn1 {
    0% {
        transform: translateZ(-500px) rotateY(0deg);
        opacity: 0;
    }
    20% {
        transform: translateZ(-250px) rotateY(30deg);
        opacity: 0.5;
    }
    100% {
        transform: translateZ(0px) rotateY(0deg);
        opacity: 1;
    }
}
@keyframes MenuAnimIn2 {
    0% {
        transform: translateX(-100%);
        opacity: 0;
    }
    100% {
        transform: translateX(0px);
        opacity: 1;
    }
}
@keyframes MenuAnimIn3 {
    0% {
        transform: translateZ(300px);
        opacity: 0;
    }
    100% {
        transform: translateZ(0px);
        opacity: 1;
    }
}
@keyframes MenuAnimIn4 {
    0% {
        transform: translateZ(-300px);
        opacity: 0;
    }
    100% {
        transform: translateZ(0px);
        opacity: 1;
    }
}
@keyframes MenuAnimIn5 {
    0% {
        transform: translateY(40%);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
.dl-menuwrapper > .dl-submenu.dl-animate-in-1 {
    -webkit-animation: SubMenuAnimIn1 0.4s ease;
    -moz-animation: SubMenuAnimIn1 0.4s ease;
    animation: SubMenuAnimIn1 0.4s ease;
}

.dl-menuwrapper > .dl-submenu.dl-animate-in-2 {
    -webkit-animation: SubMenuAnimIn2 0.3s ease-in-out;
    -moz-animation: SubMenuAnimIn2 0.3s ease-in-out;
    animation: SubMenuAnimIn2 0.3s ease-in-out;
}

.dl-menuwrapper > .dl-submenu.dl-animate-in-3 {
    -webkit-animation: SubMenuAnimIn3 0.4s ease;
    -moz-animation: SubMenuAnimIn3 0.4s ease;
    animation: SubMenuAnimIn3 0.4s ease;
}

.dl-menuwrapper > .dl-submenu.dl-animate-in-4 {
    -webkit-animation: SubMenuAnimIn4 0.4s ease;
    -moz-animation: SubMenuAnimIn4 0.4s ease;
    animation: SubMenuAnimIn4 0.4s ease;
}

.dl-menuwrapper > .dl-submenu.dl-animate-in-5 {
    -webkit-animation: SubMenuAnimIn5 0.4s ease;
    -moz-animation: SubMenuAnimIn5 0.4s ease;
    animation: SubMenuAnimIn5 0.4s ease;
}

@-webkit-keyframes SubMenuAnimIn1 {
    0% {
        -webkit-transform: translateX(50%);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateX(0px);
        opacity: 1;
    }
}
@-webkit-keyframes SubMenuAnimIn2 {
    0% {
        -webkit-transform: translateX(100%);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateX(0px);
        opacity: 1;
    }
}
@-webkit-keyframes SubMenuAnimIn3 {
    0% {
        -webkit-transform: translateZ(-300px);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateZ(0px);
        opacity: 1;
    }
}
@-webkit-keyframes SubMenuAnimIn4 {
    0% {
        -webkit-transform: translateZ(300px);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateZ(0px);
        opacity: 1;
    }
}
@-webkit-keyframes SubMenuAnimIn5 {
    0% {
        -webkit-transform: translateZ(-200px);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateZ(0);
        opacity: 1;
    }
}
@-moz-keyframes SubMenuAnimIn1 {
    0% {
        -moz-transform: translateX(50%);
        opacity: 0;
    }
    100% {
        -moz-transform: translateX(0px);
        opacity: 1;
    }
}
@-moz-keyframes SubMenuAnimIn2 {
    0% {
        -moz-transform: translateX(100%);
        opacity: 0;
    }
    100% {
        -moz-transform: translateX(0px);
        opacity: 1;
    }
}
@-moz-keyframes SubMenuAnimIn3 {
    0% {
        -moz-transform: translateZ(-300px);
        opacity: 0;
    }
    100% {
        -moz-transform: translateZ(0px);
        opacity: 1;
    }
}
@-moz-keyframes SubMenuAnimIn4 {
    0% {
        -moz-transform: translateZ(300px);
        opacity: 0;
    }
    100% {
        -moz-transform: translateZ(0px);
        opacity: 1;
    }
}
@-moz-keyframes SubMenuAnimIn5 {
    0% {
        -moz-transform: translateZ(-200px);
        opacity: 0;
    }
    100% {
        -moz-transform: translateZ(0);
        opacity: 1;
    }
}
@keyframes SubMenuAnimIn1 {
    0% {
        transform: translateX(50%);
        opacity: 0;
    }
    100% {
        transform: translateX(0px);
        opacity: 1;
    }
}
@keyframes SubMenuAnimIn2 {
    0% {
        transform: translateX(100%);
        opacity: 0;
    }
    100% {
        transform: translateX(0px);
        opacity: 1;
    }
}
@keyframes SubMenuAnimIn3 {
    0% {
        transform: translateZ(-300px);
        opacity: 0;
    }
    100% {
        transform: translateZ(0px);
        opacity: 1;
    }
}
@keyframes SubMenuAnimIn4 {
    0% {
        transform: translateZ(300px);
        opacity: 0;
    }
    100% {
        transform: translateZ(0px);
        opacity: 1;
    }
}
@keyframes SubMenuAnimIn5 {
    0% {
        transform: translateZ(-200px);
        opacity: 0;
    }
    100% {
        transform: translateZ(0);
        opacity: 1;
    }
}
.dl-menuwrapper > .dl-submenu.dl-animate-out-1 {
    -webkit-animation: SubMenuAnimOut1 0.4s ease;
    -moz-animation: SubMenuAnimOut1 0.4s ease;
    animation: SubMenuAnimOut1 0.4s ease;
}

.dl-menuwrapper > .dl-submenu.dl-animate-out-2 {
    -webkit-animation: SubMenuAnimOut2 0.3s ease-in-out;
    -moz-animation: SubMenuAnimOut2 0.3s ease-in-out;
    animation: SubMenuAnimOut2 0.3s ease-in-out;
}

.dl-menuwrapper > .dl-submenu.dl-animate-out-3 {
    -webkit-animation: SubMenuAnimOut3 0.4s ease;
    -moz-animation: SubMenuAnimOut3 0.4s ease;
    animation: SubMenuAnimOut3 0.4s ease;
}

.dl-menuwrapper > .dl-submenu.dl-animate-out-4 {
    -webkit-animation: SubMenuAnimOut4 0.4s ease;
    -moz-animation: SubMenuAnimOut4 0.4s ease;
    animation: SubMenuAnimOut4 0.4s ease;
}

.dl-menuwrapper > .dl-submenu.dl-animate-out-5 {
    -webkit-animation: SubMenuAnimOut5 0.4s ease;
    -moz-animation: SubMenuAnimOut5 0.4s ease;
    animation: SubMenuAnimOut5 0.4s ease;
}

@-webkit-keyframes SubMenuAnimOut1 {
    0% {
        -webkit-transform: translateX(0%);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateX(50%);
        opacity: 0;
    }
}
@-webkit-keyframes SubMenuAnimOut2 {
    0% {
        -webkit-transform: translateX(0%);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateX(100%);
        opacity: 0;
    }
}
@-webkit-keyframes SubMenuAnimOut3 {
    0% {
        -webkit-transform: translateZ(0px);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateZ(-300px);
        opacity: 0;
    }
}
@-webkit-keyframes SubMenuAnimOut4 {
    0% {
        -webkit-transform: translateZ(0px);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateZ(300px);
        opacity: 0;
    }
}
@-webkit-keyframes SubMenuAnimOut5 {
    0% {
        -webkit-transform: translateZ(0);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateZ(-200px);
        opacity: 0;
    }
}
@-moz-keyframes SubMenuAnimOut1 {
    0% {
        -moz-transform: translateX(0%);
        opacity: 1;
    }
    100% {
        -moz-transform: translateX(50%);
        opacity: 0;
    }
}
@-moz-keyframes SubMenuAnimOut2 {
    0% {
        -moz-transform: translateX(0%);
        opacity: 1;
    }
    100% {
        -moz-transform: translateX(100%);
        opacity: 0;
    }
}
@-moz-keyframes SubMenuAnimOut3 {
    0% {
        -moz-transform: translateZ(0px);
        opacity: 1;
    }
    100% {
        -moz-transform: translateZ(-300px);
        opacity: 0;
    }
}
@-moz-keyframes SubMenuAnimOut4 {
    0% {
        -moz-transform: translateZ(0px);
        opacity: 1;
    }
    100% {
        -moz-transform: translateZ(300px);
        opacity: 0;
    }
}
@-moz-keyframes SubMenuAnimOut5 {
    0% {
        -moz-transform: translateZ(0);
        opacity: 1;
    }
    100% {
        -moz-transform: translateZ(-200px);
        opacity: 0;
    }
}
@keyframes SubMenuAnimOut1 {
    0% {
        transform: translateX(0%);
        opacity: 1;
    }
    100% {
        transform: translateX(50%);
        opacity: 0;
    }
}
@keyframes SubMenuAnimOut2 {
    0% {
        transform: translateX(0%);
        opacity: 1;
    }
    100% {
        transform: translateX(100%);
        opacity: 0;
    }
}
@keyframes SubMenuAnimOut3 {
    0% {
        transform: translateZ(0px);
        opacity: 1;
    }
    100% {
        transform: translateZ(-300px);
        opacity: 0;
    }
}
@keyframes SubMenuAnimOut4 {
    0% {
        transform: translateZ(0px);
        opacity: 1;
    }
    100% {
        transform: translateZ(300px);
        opacity: 0;
    }
}
@keyframes SubMenuAnimOut5 {
    0% {
        transform: translateZ(0);
        opacity: 1;
    }
    100% {
        transform: translateZ(-200px);
        opacity: 0;
    }
}
/* No JS Fallback */
.no-js .dl-menuwrapper .dl-menu {
    position: relative;
    opacity: 1;
    -webkit-transform: none;
    -moz-transform: none;
    transform: none;
}

.no-js .dl-menuwrapper li .dl-submenu {
    display: block;
}

.no-js .dl-menuwrapper li.dl-back {
    display: none;
}

.no-js .dl-menuwrapper li > a:not(:only-child) {
    background: rgba(0, 0, 0, 0.1);
}

.no-js .dl-menuwrapper li > a:not(:only-child):after {
    content: '';
}

/* #3: CSS added for override at widths above mobile menu
--------------------------------------------------------- */
@media only screen and (min-width: 801px) {
    .dl-menuwrapper .dl-menu {
        opacity: 1;
        pointer-events: initial;
    }

    .dl-menuwrapper li > a:not(:only-child):after {
        display: none;
    }
}
/* #4: CSS Styling for Menu
--------------------------------------------------------- */
div:after, .nav-main:after, .nav-main-list:after, .image-thumb-list:after, .nav-footer-list:after, .contact-info-list:after, aside:after, .special-offer:after, .page-footer:after, .buttons:after {
    content: "";
    display: table;
    clear: both;
}

a {
    text-decoration: none;
}

/* #Navigation
================================================== */
/* Main nav menu */
.nav-main {
    width: 96.91358%;
    position: absolute;
    right: 1.54321%;
    top: 50px;
    text-align: center;
    -webkit-box-shadow: 1px 0 8px 0 rgba(0, 0, 0, 0.4);
    box-shadow: 1px 0 8px 0 rgba(0, 0, 0, 0.4);
}

@media only screen and (min-width: 801px) {
    .nav-main {
        position: relative;
        width: 100%;
        right: auto;
        top: auto;
        margin: 0 auto;
        max-width: 1200px;
        background: #d06f1a;
    }
}
.nav-main-list, .nav-sub-list {
    list-style: none;
    padding: 0;
}

.nav-main-list {
    max-width: 978px;
    margin: 0 auto;
    background: #d06f1a;
}

.nav-main-item {
    display: block;
    width: 100%;
    border-bottom: 1px solid #EB7D1D;
}

.nav-main-item:first-child {
    border-top: 1px solid #EB7D1D;
}

@media only screen and (min-width: 801px) {
    .nav-main-item:first-child {
        border-top: none;
    }
}
.nav-main-item > a {
    display: block;
    color: white;
    padding: 9px 0;
}

.nav-main-item > a:hover {
    background: #B66117;
}

@media only screen and (min-width: 801px) {
    .nav-main-item {
        float: left;
        position: relative;
        width: calc(25% - 1px);
        border-right: 1px solid #EB7D1D;
        border-bottom: none;
        text-align: center;
    }

    .nav-main-item:first-child {
        border-left: 1px solid #EB7D1D;
        border-top: none;
        width: calc(25% - 2px);
    }

    .nav-main-item > a {
        display: block;
    }
}
@media only screen and (min-width: 801px) {
    .nav-main-item {
        font-size: 12.25px;
        font-size: 0.875rem;
    }
}
@media only screen and (min-width: 801px) {
    .nav-main-item {
        font-size: 14px;
        font-size: 1rem;
    }
}
/* nav icon */
.nav-handle {
    position: absolute;
    right: 0;
    top: -50px;
    display: block;
    cursor: pointer;
    width: 50px;
    height: 50px;
    padding: 5px;
    background: #d06f1a;
    color: white;
    font-size: 9px;
    font-weight: bold;
    text-transform: uppercase;
    padding-bottom: 30px;
    -webkit-box-shadow: 0 0 3px 0 rgba(0, 0, 0, 0.4);
    box-shadow: 0 0 3px 0 rgba(0, 0, 0, 0.4);
}

.nav-handle:after {
    content: '';
    display: block;
    width: 24px;
    height: 3px;
    top: 22px;
    left: 13px;
    position: absolute;
    background: white;
    -webkit-box-shadow: 0 8px 0 0 white, 0 16px 0 0 white;
    box-shadow: 0 8px 0 0 white, 0 16px 0 0 white;
}

.nav-handle:hover {
    background: #B66117;
}

@media only screen and (min-width: 801px) {
    .nav-handle {
        display: none;
    }
}
.nav-sub-list {
    position: absolute;
    left: 0;
    width: 100%;
    top: 100%;
    background: #d06f1a;
    white-space: nowrap;
}

@media only screen and (min-width: 801px) {
    .nav-sub-list {
        display: block;
        max-height: 0;
        width: auto;
        overflow: hidden;
        text-align: left;
        min-width: 100%;
        -webkit-transition: all 0.2s ease-in-out;
        transition: all 0.2s ease-in-out;
    }
}
.nav-main-item:last-child > .nav-sub-list {
    left: auto;
    right: 0;
}

@media only screen and (min-width: 801px) {
    .nav-main-item:hover > .nav-sub-list {
        height: auto;
        max-height: 500px;
        -webkit-transition: all 0.6s ease-in-out;
        transition: all 0.6s ease-in-out;
    }
}
.nav-sub-item, .dl-back {
    border-bottom: 1px solid #EB7D1D;
}

.nav-sub-item:first-child, .dl-back {
    border-top: 1px solid #EB7D1D;
}

.nav-sub-item > a, .dl-back > a {
    color: white;
    display: block;
    padding: 8px 10px;
}

.nav-sub-item > a:hover {
    background: #B66117;
}

@media only screen and (min-width: 801px) {
    .dl-back {
        display: none;
    }

    .nav-sub-sub {
        display: none;
    }

    .mobile-main-item {
        display: none;
    }
}
/* specific to this pen */
body {
    font-family: 'Maven Pro';
}

h2 {
    margin-top: 3em;
    text-align: center;
}
h2 > a {
    color: #d06f1a;
}
h2 > a:hover {
    color: #EB7D1D;
}




/* JS Table of Contents:
--------------------------------------------------------------
#1: Line 8: Original JS for menu functionality (plus added resize event)
#2: Line 272: Additional JS for responsive functionality

*/

/* #1: Original JS */

// I've added a resize event to reset the menu when the window is above a certain width (800px here) - line 166
/**
 * jquery.dlmenu.js v1.0.1
 * http://www.codrops.com
 *
 * Licensed under the MIT license.
 * https://www.opensource.org/licenses/mit-license.php
 *
 * Copyright 2013, Codrops
 * http://www.codrops.com
 */

(function($, window, undefined) {
  "use strict";

  // global
  var Modernizr = window.Modernizr,
      $body = $("body");

  $.DLMenu = function(options, element) {
    this.$el = $(element);
    this._init(options);
  };

  // the options
  $.DLMenu.defaults = {
    // classes for the animation effects
    animationClasses: {
      classin: "dl-animate-in-1",
      classout: "dl-animate-out-1"
    },
    // callback: click a link that has a sub menu
    // el is the link element (li); name is the level name
    onLevelClick: function(el, name) {
      return false;
    },
    // callback: click a link that does not have a sub menu
    // el is the link element (li); ev is the event obj
    onLinkClick: function(el, ev) {
      return false;
    }
  };

  $.DLMenu.prototype = {
    _init: function(options) {
      // options
      this.options = $.extend(true, {}, $.DLMenu.defaults, options);
      // cache some elements and initialize some variables
      this._config();

      var animEndEventNames = {
        WebkitAnimation: "webkitAnimationEnd",
        OAnimation: "oAnimationEnd",
        msAnimation: "MSAnimationEnd",
        animation: "animationend"
      },
          transEndEventNames = {
            WebkitTransition: "webkitTransitionEnd",
            MozTransition: "transitionend",
            OTransition: "oTransitionEnd",
            msTransition: "MSTransitionEnd",
            transition: "transitionend"
          };
      // animation end event name
      this.animEndEventName =
        animEndEventNames[Modernizr.prefixed("animation")] + ".dlmenu";
      // transition end event name
      (this.transEndEventName =
       transEndEventNames[Modernizr.prefixed("transition")] + ".dlmenu"),
        // support for css animations and css transitions
        (this.supportAnimations = Modernizr.cssanimations),
        (this.supportTransitions = Modernizr.csstransitions);

      this._initEvents();
    },
    _config: function() {
      this.open = false;
      this.$trigger = this.$el.children(".dl-trigger");
      this.$menu = this.$el.children("ul.dl-menu");
      this.$menuitems = this.$menu.find("li:not(.dl-back)");
      this.$el
        .find("ul.dl-submenu")
        .prepend('<li class="dl-back"><a href="#">back</a></li>');
      this.$back = this.$menu.find("li.dl-back");
      this.mobileBreakpoint = 800;
    },
    _initEvents: function() {
      var self = this;

      this.$trigger.on("click.dlmenu", function() {
        if (self.open) {
          self._closeMenu();
        } else {
          self._openMenu();
        }
        return false;
      });

      this.$menuitems.on("click.dlmenu", function(event) {
        event.stopPropagation();

        var $item = $(this),
            $submenu = $item.children("ul.dl-submenu");

        if ($submenu.length > 0) {
          var $flyin = $submenu
          .clone()
          .css("opacity", 0)
          .insertAfter(self.$menu),
              onAnimationEndFn = function() {
                self.$menu
                  .off(self.animEndEventName)
                  .removeClass(self.options.animationClasses.classout)
                  .addClass("dl-subview");
                $item
                  .addClass("dl-subviewopen")
                  .parents(".dl-subviewopen:first")
                  .removeClass("dl-subviewopen")
                  .addClass("dl-subview");
                $flyin.remove();
              };

          setTimeout(function() {
            $flyin.addClass(self.options.animationClasses.classin);
            self.$menu.addClass(self.options.animationClasses.classout);
            if (self.supportAnimations) {
              self.$menu.on(self.animEndEventName, onAnimationEndFn);
            } else {
              onAnimationEndFn.call();
            }

            self.options.onLevelClick($item, $item.children("a:first").text());
          });

          return false;
        } else {
          self.options.onLinkClick($item, event);
        }
      });

      this.$back.on("click.dlmenu", function(event) {
        var $this = $(this),
            $submenu = $this.parents("ul.dl-submenu:first"),
            $item = $submenu.parent(),
            $flyin = $submenu.clone().insertAfter(self.$menu);

        var onAnimationEndFn = function() {
          self.$menu
            .off(self.animEndEventName)
            .removeClass(self.options.animationClasses.classin);
          $flyin.remove();
        };

        setTimeout(function() {
          $flyin.addClass(self.options.animationClasses.classout);
          self.$menu.addClass(self.options.animationClasses.classin);
          if (self.supportAnimations) {
            self.$menu.on(self.animEndEventName, onAnimationEndFn);
          } else {
            onAnimationEndFn.call();
          }

          $item.removeClass("dl-subviewopen");

          var $subview = $this.parents(".dl-subview:first");
          if ($subview.is("li")) {
            $subview.addClass("dl-subviewopen");
          }
          $subview.removeClass("dl-subview");
        });

        return false;
      });
      // the only piece added to the original - resets the menu when the browser is greater than a certain width
      $(window).resize(function() {
        if ($(window).width() > self.mobileBreakpoint) {
          self._resetMenu();
        }
      });
    },
    closeMenu: function() {
      if (this.open) {
        this._closeMenu();
      }
    },
    _closeMenu: function() {
      var self = this,
          onTransitionEndFn = function() {
            self.$menu.off(self.transEndEventName);
            self._resetMenu();
          };

      this.$menu.removeClass("dl-menuopen");
      this.$menu.addClass("dl-menu-toggle");
      this.$trigger.removeClass("dl-active");

      if (this.supportTransitions) {
        this.$menu.on(this.transEndEventName, onTransitionEndFn);
      } else {
        onTransitionEndFn.call();
      }

      this.open = false;
    },
    openMenu: function() {
      if (!this.open) {
        this._openMenu();
      }
    },
    _openMenu: function() {
      var self = this;
      // clicking somewhere else makes the menu close
      $body.off("click").on("click.dlmenu", function() {
        self._closeMenu();
      });
      this.$menu
        .addClass("dl-menuopen dl-menu-toggle")
        .on(this.transEndEventName, function() {
        $(this).removeClass("dl-menu-toggle");
      });
      this.$trigger.addClass("dl-active");
      this.open = true;
    },
    // resets the menu to its original state (first level of options)
    _resetMenu: function() {
      this.$menu.removeClass("dl-subview");
      this.$menuitems.removeClass("dl-subview dl-subviewopen");
    }
  };

  var logError = function(message) {
    if (window.console) {
      window.console.error(message);
    }
  };

  $.fn.dlmenu = function(options) {
    if (typeof options === "string") {
      var args = Array.prototype.slice.call(arguments, 1);
      this.each(function() {
        var instance = $.data(this, "dlmenu");
        if (!instance) {
          logError(
            "cannot call methods on dlmenu prior to initialization; " +
            "attempted to call method '" +
            options +
            "'"
          );
          return;
        }
        if (!$.isFunction(instance[options]) || options.charAt(0) === "_") {
          logError("no such method '" + options + "' for dlmenu instance");
          return;
        }
        instance[options].apply(instance, args);
      });
    } else {
      this.each(function() {
        var instance = $.data(this, "dlmenu");
        if (instance) {
          instance._init();
        } else {
          instance = $.data(this, "dlmenu", new $.DLMenu(options, this));
        }
      });
    }
    return this;
  };
})(jQuery, window);

/* #2: javascript added for responsive functionality: mix of jquery and plain js (already had the plain js written for another site)
-------------------------------------------------------------- */

$(function() {
  var mobileBreakpoint = 800;

  duplicateParentofSubs(createDLMenu);

  function createDLMenu() {
    $("#dl-menu").dlmenu({
      animationClasses: {
        classin: "dl-animate-in-2",
        classout: "dl-animate-out-2"
      }
    });

    determineNav();
  }

  function determineNav() {
    var winWidth = $(window).width(),
        dlMenu = $(".nav-main"),
        dlSubList = $(".nav-sub-list"),
        dlSubSub = $(".nav-sub-sub");

    removeDLInfo();
    addDLInfo();

    $(window).resize(function() {
      winWidth = $(window).width();

      removeDLInfo();
      addDLInfo();
    });

    function removeDLInfo() {
      if (winWidth > mobileBreakpoint) {
        if (dlMenu.hasClass("dl-menuwrapper")) {
          dlMenu.removeClass("dl-menuwrapper").attr("id", "");
          dlSubList.removeClass("dl-submenu");
          dlSubSub.removeClass("dl-submenu");
        }
      }
    }

    function addDLInfo() {
      if (winWidth <= mobileBreakpoint) {
        if (!dlMenu.hasClass("dl-menuwrapper")) {
          dlMenu.addClass("dl-menuwrapper").attr("id", "dl-menu");
          dlSubList.addClass("dl-submenu");
          dlSubSub.addClass("dl-submenu");
        }
      }
    }
  }

  function duplicateParentofSubs(callback) {
    var navSub = document.getElementsByClassName("dl-submenu"),
        mainNavItem = null,
        mainNavItemLink = null,
        winWidth = viewport(),
        addItems = true;

    checkWidth();
    window.onresize = checkWidth;

    callback();

    function viewport() {
      var e = window,
          a = "inner";
      if (!("innerWidth" in window)) {
        a = "client";
        e = document.documentElement || document.body;
      }
      return { width: e[a + "Width"] };
    }

    function checkWidth() {
      winWidth = viewport().width;
      for (i = 0; i < navSub.length; i++) {
        mainNavItem = navSub[i].parentNode;
        mainNavItemLink = mainNavItem.getElementsByTagName("a")[0];

        if (addItems) {
          clonedItems(mainNavItem, false);
        }
        if (winWidth <= mobileBreakpoint) {
          mainNavItemLink.onclick = function(event) {
            event.preventDefault();
          };
        } else {
          mainNavItemLink.onclick = function() {
            return true;
          };
        }
      }
      addItems = false;
    }

    function clonedItems(mainListItem) {
      var subNavItem = mainListItem.cloneNode(false),
          subNavItemLink = mainListItem.children[0].cloneNode(true),
          subNav = mainListItem.children[1];

      subNavItem.appendChild(subNavItemLink);
      subNav.insertBefore(subNavItem, subNav.children[0]);
      subNavItem.setAttribute("class", "nav-sub-item mobile-main-item");
    }
  }
});









