<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet'>
</head>

<div class="site-container">
    <div class="site-pusher">

        <header class="header">

            <a href="#" class="header__icon" id="header__icon"></a>
            <a href="#" class="header__logo">Logo</a>

            <nav class="menu">
                <a href="#">Home</a>
                <a href="#">About</a>
                <a href="#">Blog</a>
                <a href="#">Contact</a>
            </nav>

        </header>

        <div class="site-content">
            <div class="container">

                <h1>Responsive Navigation Bar</h1>
                <p>Tutorial by Grafikart.fr
                    <a href="https://www.youtube.com/watch?v=_X2N_yw9Boo" target="_blank" style="color: blue">https://www.youtube.com/watch?v=_X2N_yw9Boo</a>
                </p>
                <p>UI Color Palette from
                    <a href="https://www.google.com/design/spec/style/color.html" target="_blank" style="color: blue">Google Material Design</a>
                </p>

                <h2>Animals</h2>
                <ul>
                    <li>Sabre-Toothed Tiger</li>
                    <li>Old English Sheepdog</li>
                    <li>Little Penguin</li>
                    <li>Striped Rocket Frog</li>
                    <li>Snapping Turtle</li>
                </ul>

                <h2 style="background-color: #fff176; display: inline">Hint</h2>
                <p>Resize the browser window to toggle</p>

                <h2>Breakfast</h2>
                <figure>
                    <a href="http://commons.wikimedia.org/wiki/File:Grilled_ham_and_cheese_014.JPG" target="_blank">
                        <img src="http://upload.wikimedia.org/wikipedia/commons/5/50/Grilled_ham_and_cheese_014.JPG" alt="By Glenlarson at English Wikipedia (en.wikipedia) [Public domain], via Wikimedia Commons" style="width: 100%; height: auto;">
                    </a>
                    <figcaption style="font-size: smaller">Breakfast.01 - The picture above has cheese though, mine has no cheese.</figcaption>
                </figure>
                <p>I make ham sandwiches in the morning with toasted bread and a cup of fresh milk every weekend.</p>
                <p>Bacon ipsum dolor sit amet beef kielbasa pancetta sirloin, landjaeger sausage kevin hamburger frankfurter ham.Consequat laborum ham hock culpa pork filet mignon kevin, ribeye leberkas sed tri-tip corned beef ut dolore exercitation.</p>
                <p>Ground round chicken cow, tongue porchetta sirloin salami kielbasa pork prosciutto venison pork chop capicola.</p>

            </div> <!-- END container -->
        </div> <!-- END site-content -->
        <div class="site-cache" id="site-cache"></div>
    </div> <!-- END site-pusher -->
</div> <!-- END site-container -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


/* VARIABLES */
/* BASE */
html,
body {
    font-family: 'Roboto', sans-serif;
    font-size: 1em;
    line-height: 1.4;
    height: 100%;
    margin: 0;
    padding: 0;
}

a {
    text-decoration: none;
    color: inherit;
}

.container {
    overflow: hidden;
    *zoom: 1;
    margin: 0 20px;
}

.site-content {
    padding-top: 66px;
}

/* HEADER */
.header {
    position: fixed;
    left: 0;
    right: 0;
    height: 66px;
    line-height: 66px;
    color: #fff;
    background-color: #3f51b5;
}

.header__logo {
    font-weight: 700;
    padding: 0 25px;
    float: left;
}

/* MENU */
.menu {
    float: left;
}
.menu a {
    padding: 0 10px;
}
.menu a:hover {
    color: #c5cae9;
}

/* RESPONSIVE */
@media only screen and (max-width: 768px) {
    .site-pusher,
    .site-container {
        height: 100%;
    }

    .site-container {
        overflow: hidden;
    }

    .site-pusher {
        transition-duration: 0.3s;
        -webkit-transform: translateX(0px);
        transform: translateX(0px);
    }

    .site-content {
        position: absolute;
        top: 66px;
        right: 0;
        left: 0;
        bottom: 0;
        padding-top: 0;
        overflow-y: scroll;
        -webkit-overflow-scrolling: touch;
    }

    .header {
        position: static;
    }

    .header__icon {
        position: relative;
        display: block;
        float: left;
        width: 50px;
        height: 66px;
        cursor: pointer;
    }
    .header__icon:after {
        content: '';
        position: absolute;
        display: block;
        width: 1rem;
        height: 0;
        top: 16px;
        left: 15px;
        box-shadow: 0 10px 0 1px #fff, 0 16px 0 1px #fff, 0 22px 0 1px #fff;
    }

    .menu {
        position: absolute;
        left: 0;
        top: 0;
        bottom: 0;
        background-color: #3849a2;
        /*    overflow-y: scroll;
                -webkit-overflow-scrolling: touch;*/
        width: 250px;
        -webkit-transform: translateX(-250px);
        transform: translateX(-250px);
    }
    .menu a {
        display: block;
        height: 40px;
        text-align: center;
        line-height: 40px;
        border-bottom: 1px solid #3f51b5;
    }

    .with--sidebar .site-pusher {
        -webkit-transform: translateX(250px);
        transform: translateX(250px);
    }
    .with--sidebar .site-cache {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.6);
    }
}


$(document).ready(function(){

    (function($) {

        $('#header__icon').click(function(e){
            e.preventDefault();
            $('body').toggleClass('with--sidebar');
        });

        $('#site-cache').click(function(e){
            $('body').removeClass('with--sidebar');
        });

    })(jQuery);

});