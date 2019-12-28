<h1>
    Click on the hamburger icon →
</h1>
<div  class="open">
    <span class="cls"></span>
    <span>
        <ul class="sub-menu ">
            <li>
                <a href="#about" title="about">Sobre / About</a>
            </li>
            <li>
                <a href="#skills" title="skills">Habilidades / Skills</a>
            </li>
            <li>
                <a href="#jobs" title="jobs">Trabalhos / Jobs</a>
            </li>
            <li>
                <a href="#contact" title="contact">Contato / Contact</a>
            </li>
        </ul>
    </span>
    <span class="cls"></span>
</div>


<!-- <a href="https://codepen.io/sergioandrade/pen/pXmKJv" class="button" title="Check out my new Pen">Check out my new Pen</a> -->

<div class="container">
    Check out my new pen
    <br>
    <br>
</div>
<div class="container">
    <a href="https://codepen.io/sergioandrade/full/pXmKJv" target="_blank" class="card">
        <img src="https://pbs.twimg.com/card_img/1150575454346194947/R5b7DGbV?format=png&name=600x314" alt="">
        <figcaption>
            Countdown with grid css
        </figcaption>
    </a>

</div>


html {
    box-sizing: border-box;
}

*, *:after, *:before {
    box-sizing: inherit;
}

a {
    color: #333;
    text-decoration: none;
}

html {
    width: 100%;
    height: 100%;
}

body {
    background: #161616;
    width: 100%;
    height: 100%;
    font-family: Arial, Helvetica, sans-serif;
    color: #fff;
    padding: 60px;
}

h1 {
    width: 100%;
    text-align: center;
    padding: 40px 0;
}

.open {
    position: fixed;
    top: 40px;
    right: 40px;
    width: 50px;
    height: 50px;
    display: block;
    cursor: pointer;
    transition: opacity 0.2s linear;
}
.open:hover {
    opacity: 0.8;
}
.open span {
    display: block;
    float: left;
    clear: both;
    height: 4px;
    width: 40px;
    border-radius: 40px;
    background-color: #fff;
    position: absolute;
    right: 3px;
    top: 3px;
    overflow: hidden;
    transition: all 0.4s ease;
}
.open span:nth-child(1) {
    margin-top: 10px;
    z-index: 9;
}
.open span:nth-child(2) {
    margin-top: 25px;
}
.open span:nth-child(3) {
    margin-top: 40px;
}

.sub-menu {
    transition: all 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55);
    height: 0;
    width: 0;
    right: 0;
    top: 0;
    position: absolute;
    background-color: rgba(38, 84, 133, 0.54);
    border-radius: 50%;
    z-index: 18;
    overflow: hidden;
}
.sub-menu li {
    display: block;
    float: right;
    clear: both;
    height: auto;
    margin-right: -160px;
    transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
.sub-menu li:first-child {
    margin-top: 180px;
}
.sub-menu li:nth-child(1) {
    -webkit-transition-delay: 0.05s;
}
.sub-menu li:nth-child(2) {
    -webkit-transition-delay: 0.10s;
}
.sub-menu li:nth-child(3) {
    -webkit-transition-delay: 0.15s;
}
.sub-menu li:nth-child(4) {
    -webkit-transition-delay: 0.20s;
}
.sub-menu li:nth-child(5) {
    -webkit-transition-delay: 0.25s;
}
.sub-menu li a {
    color: #fff;
    font-family: 'Lato', Arial, Helvetica, sans-serif;
    font-size: 16px;
    width: 100%;
    display: block;
    float: left;
    line-height: 40px;
}

.oppenned .sub-menu {
    opacity: 1;
    height: 400px;
    width: 400px;
}
.oppenned span:nth-child(2) {
    overflow: visible;
}
.oppenned span:nth-child(1), .oppenned span:nth-child(3) {
    z-index: 100;
    -webkit-transform: rotate(45deg);
                    transform: rotate(45deg);
}
.oppenned span:nth-child(1) {
    -webkit-transform: rotate(45deg) translateY(12px) translateX(12px);
                    transform: rotate(45deg) translateY(12px) translateX(12px);
}
.oppenned span:nth-child(2) {
    height: 400px;
    width: 400px;
    right: -160px;
    top: -160px;
    border-radius: 50%;
    background-color: rgba(38, 84, 133, 0.54);
}
.oppenned span:nth-child(3) {
    -webkit-transform: rotate(-45deg) translateY(-10px) translateX(10px);
                    transform: rotate(-45deg) translateY(-10px) translateX(10px);
}
.oppenned li {
    margin-right: 168px;
}

.button {
    display: block;
    float: left;
    clear: both;
    padding: 20px 40px;
    background: #fff;
    border-radius: 3px;
    border: 2px solid #10a1ea;
    overflow: hidden;
    position: relative;
}
.button:after {
    transition: -webkit-transform 0.3s ease;
    transition: transform 0.3s ease;
    transition: transform 0.3s ease, -webkit-transform 0.3s ease;
    content: "";
    position: absolute;
    height: 200px;
    width: 400px;
    -webkit-transform: rotate(45deg) translateX(-540px) translateY(-100px);
                    transform: rotate(45deg) translateX(-540px) translateY(-100px);
    background: #10a1ea;
    z-index: 1;
}
.button:before {
    transition: -webkit-transform 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
    transition: transform 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
    transition: transform 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55), -webkit-transform 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
    content: attr(title);
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    color: #fff;
    z-index: 2;
    text-align: center;
    padding: 20px 40px;
    -webkit-transform: translateY(200px);
                    transform: translateY(200px);
}
.button:hover {
    text-decoration: none;
}
.button:hover:after {
    -webkit-transform: translateX(-300px) translateY(-100px);
                    transform: translateX(-300px) translateY(-100px);
}
.button:hover:before {
    -webkit-transform: translateY(0);
                    transform: translateY(0);
}

.container {
    display: flex;
    max-width: 80%;
    justify-content: center;
    margin: 0 auto;
}

.card {
    position: relative;
    z-index: 10;
    width: 280px;
    border-radius: 4px;
    padding-bottom: 40px;
    background: #131e32;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
}
.card figcaption {
    position: absolute;
    bottom: 0;
    padding: 10px;
    color: #fff;
}
.card img {
    max-width: 100%;
    border: 1px solid #222;
    transition: .4s;
}
.card:hover img {
    -webkit-transform: scale(1.1);
                    transform: scale(1.1);
}

$(document).ready(function() {
        $(document).delegate('.open', 'click', function(event){
            $(this).addClass('oppenned');
            event.stopPropagation();
        })
        $(document).delegate('body', 'click', function(event) {
            $('.open').removeClass('oppenned');
        })
        $(document).delegate('.cls', 'click', function(event){
            $('.open').removeClass('oppenned');
            event.stopPropagation();
        });
    });









