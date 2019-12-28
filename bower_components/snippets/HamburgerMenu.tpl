<div class="hamburger"></div>

body {
    background: #FAB526;
    text-align: center;
}

.hamburger {
    margin-top: 30vh;
    display: inline-block;
}
.hamburger > div {
    margin-top: 4vh;
    background: #fff;
    height: 5vh;
    width: 30vh;
    border-radius: 2.5vh;
    position: relative;
}
.hamburger > div:nth-child(2)::after {
    border: 2.5vh solid #fff;
    border-color: #fff transparent transparent transparent;
    position: absolute;
    content: "";
    bottom: -2.5vh;
    right: 4vh;
    transition: .3s all ease-in-out;
}
.hamburger > div:first-child {
    over-flow: hidden;
    transition: .3s all ease-in-out;
    position: relative;
    top: 0;
}
.hamburger:hover, .hamburger:active, .hamburger.expanded {
    cursor: pointer;
}
.hamburger:hover div:nth-child(2)::after, .hamburger:active div:nth-child(2)::after, .hamburger.expanded div:nth-child(2)::after {
    bottom: -4.5vh;
}
.hamburger:hover div:first-child, .hamburger:active div:first-child, .hamburger.expanded div:first-child {
    height: 15vh;
    top: -10vh;
    margin-bottom: -10vh;
    border-radius: 20vh 20vh 2.5vh 2.5vh;
}

$('.hamburger').append('<div/><div/><div/>').click(function(e) {
    $(this).toggleClass('expanded');
    e.stopPropogation();
});


$('body').click(function(e) {
    $('.expanded').removeClass('expanded');
});