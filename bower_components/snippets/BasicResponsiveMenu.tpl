<nav class='cf'>
    <ul class='cf'>
        <li>
            <a href='#'>Item 0</a>
        </li>
        <li>
            <a href='#'>Item 1</a>
        </li>
        <li>
            <a href='#'>Item 2</a>
        </li>
        <li>
            <a href='#'>Item 3</a>
        </li>
    </ul>
    <a href='#' id='openup'>MENU</a>
</nav>
<h1>Basic Responsive Menu</h1>
<p>Playing around and learning HAML + SCSS - Basic Responsive Menu.</p>

body {
    font-family: 'PT Sans Narrow', sans-serif;
    background-color: #eee;
    background-image: url("http://i.cubeupload.com/NjsJx8.png");
    margin: 0;
}

h1 {
    font-size: 4em;
    font-family: 'PT Sans Narrow', sans-serif;
    line-height: 1.1;
    text-align: center;
    padding: 10px;
}

p {
    font-size: 1.2em;
    text-align: center;
    padding: 10px;
}
=====================================================================
nav {
    height: 40px;
    width: 100%;
    background-color: #333;
    color: #eee;
}
nav ul {
    padding: 0;
    margin: 0;
}
nav li {
    display: inline;
    float: left;
}
nav a {
    display: inline-block;
    width: 100px;
    text-align: center;
    text-decoration: none;
    padding: 10px 0;
    color: #eee;
    text-decoration: none;
}
nav li:hover {
    background-color: #444;
}
nav a#openup {
    display: none;
}

@media screen and (max-width: 480px) {
    h1 {
        font-size: 2.8em;
    }

    nav {
        height: auto;
        border-bottom: 0;
    }
    nav ul {
        display: none;
        height: auto;
    }
    nav li {
        width: 100%;
        float: left;
        position: relative;
    }
    nav a {
        text-align: left;
        width: 100%;
        text-indent: 25px;
        background: #333;
        border-bottom: 1px solid #555;
    }
    nav a:hover {
        background: #444;
    }
    nav a#openup:after {
        content: "|||";
        transform: rotate(-90deg);
        -ms-transform: rotate(-90deg);
        /* IE 9 */
        -webkit-transform: rotate(-90deg);
        /* Safari and Chrome */
        width: 30px;
        height: 30px;
        display: inline-block;
        position: absolute;
        right: 5px;
        top: 20px;
    }
    nav a#openup {
        display: block;
        background-color: #333;
        width: 100%;
        position: relative;
    }
}
.cf:before, .cf:after {
    content: "";
    display: table;
}

.cf:after {
    clear: both;
}

.cf {
    zoom: 1;
}

/* For IE 6/7 (trigger hasLayout) */
========================================================================================
$(function() {
    menu = $('nav ul');

    $('#openup').on('click', function(e) {
        e.preventDefault(); menu.slideToggle();
    });

    $(window).resize(function(){
        var w = $(this).width(); if(w > 480 && menu.is(':hidden')) {
            menu.removeAttr('style');
        }
    });

    $('nav li').on('click', function(e) {
        var w = $(window).width(); if(w < 480 ) {
            menu.slideToggle();
        }
    });
    $('.open-menu').height($(window).height());
});