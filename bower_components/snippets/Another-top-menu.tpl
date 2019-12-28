<div class="navbar">
    <div class="menu icon-menu"></div>
    <div class="settings icon-search"></div>
</div>
<nav role='navigation'>
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Clients</a></li>
        <li><a href="#">Contact Us</a></li>
    </ul>
</nav>
<div class="search">
    <h1>Search:</h1><input type="search" />
</div>

* {
    transition: all 0.2s ease-in-out;
    font-family: Arial;
}

html, body {
    height: 100%;
    width: 100%;
    padding: 0;
    margin: 0 auto;
}

ul, li {
    padding: 0;
    margin: 0 auto;
}

[class*='icon'] {
    display: inline-block;
    margin: 16px;
    margin-top: 10px;
    font-size: 24px;
    text-align: center;
    color: #fff;
    font-size: 3em;
    cursor: pointer;
}
[class*='icon']:hover {
    color: #e1e1e1;
}

.navbar {
    background: #09c;
    width: 100%;
    height: 75px;
    position: absolute;
    z-index: 99999;
    box-shadow: 0 0 10px #000;
}

.menu {
    position: absolute;
    left: 0;
}

.settings {
    position: absolute;
    right: 0;
}

nav {
    position: absolute;
    background: #007399;
    width: 100%;
    left: 0;
    top: -100%;
    z-index: 999;
    transition-timing: 1s;
    box-shadow: 0 0 10px #000;
}
nav li {
    list-style: none;
    text-align: center;
}
nav li a {
    display: block;
    padding: 15px;
    color: #fff;
    text-decoration: none;
    font-size: 24pt;
}
nav li a:hover {
    background: #0086b3;
    text-decoration: underline;
}

.search {
    position: absolute;
    background: #007399;
    width: 100%;
    left: 0;
    top: -100%;
    z-index: 999;
    transition-timing: 1s;
    box-shadow: 0 0 10px #000;
    padding: 15px;
    line-height: 75px;
}
.search h1 {
    float: left;
    margin: 0;
    color: #fff;
    padding-right: 25px;
    font-weight: normal;
}
.search input[type='search'] {
    padding: 10px;
    width: 250px;
}

.down {
    top: 74px;
}


// drop down the menu, and swap the icon to the close icon
$('.menu').click(function(){
    $(this).toggleClass('icon-menu');
    $(this).toggleClass('icon-cross');
    $('nav').toggleClass('down');
    $('nav li a').removeClass('down');
    $('.search').removeClass('down');
    $('.icon-search').removeClass('icon-cross');
});

//Make sure the menu icon behaves corectly when the menu is open
$('nav li a').click(function(){
        $('.menu').addClass('icon-menu');
        $('.menu').removeClass('icon-cross');
        $('nav').toggleClass('down');
});

//show and hide the search bar, also make sure if the menu is open to hide the menu, and ensure the menu icon state is correct
$('.icon-search').click(function(){
        $(this).toggleClass('icon-cross');
        $('.menu').addClass('icon-menu');
        $('.menu').removeClass('icon-cross');
        $('.search').toggleClass('down');
        $('nav').removeClass('down');
});