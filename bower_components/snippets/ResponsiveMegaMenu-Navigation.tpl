<div id="header">
    <div class="logo">
        <a href="#">Responsive Nav</a>
    </div>
    <nav>
        <form class="search" action="search.php">
            <input name="q" placeholder="Search..." type="search">
        </form>
        <ul>
            <li>
                <a href="">Home</a>
            </li>
            <li>
                <a href="">About</a>
                <ul class="mega-dropdown">
                    <li class="row">
                        <ul class="mega-col">
                            <li><a href="#">About</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                        <ul class="mega-col">
                            <li><a href="#">Help</a></li>
                            <li><a href="#">Pricing</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Services</a></li>
                        </ul>
                        <ul class="mega-col">
                            <li><a href="#">Coming Soon</a></li>
                            <li><a href="#">404 Error</a></li>
                            <li><a href="#">Search</a></li>
                            <li><a href="#">Author Page</a></li>
                        </ul>
                        <ul class="mega-col">
                            <li><a href="#">Full Width</a></li>
                            <li><a href="#">Right Column</a></li>
                            <li><a href="#">Left Column</a></li>
                            <li><a href="#">Maintenance</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="">Contact</a>
                    <ul>
                        <li><a href="#">About Version</a></li>
                        <li><a href="#">About Version</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
            </li>
            <li>
                <a href="">Portfolio</a>
            </li>
            <li>
                <a href="">Team</a>
            </li>
        </ul>
    </nav>
</div>

*, *:before, *:after {-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box;margin:0;padding:0}
body{background:#bdc3c7;line-height:1.5;font-family:sans-serif;text-transform:uppercase;font-size:16px;color:#fff}
a{text-decoration:none;color:#fff}
#header{background:#1E262D;width:100%;position:relative}
#header:after{content:"";clear:both;display:block}
.search{float:right;padding:30px}
input{border:none;padding:10px;border-radius:20px}
.logo{float:left;padding:26px 0 26px}
.logo a{font-size:28px;display:block;padding:0 0 0 20px}
nav{float:right;}
nav>ul{float:left;position:relative}
nav li{list-style:none;float:left}
nav .dropdown{position:relative}
nav li a{float:left;padding:35px}
nav li a:hover{background:#2C3E50}
nav li ul{display:none}
nav li:hover ul{display:inline}
nav li li{float:none}
nav .dropdown ul{position:absolute;left:0;top:100%;background:#fff;padding:20px 0;border-bottom:3px solid #34495e}
nav .dropdown li{white-space:nowrap}
nav .dropdown li a{padding:10px 35px;font-size:13px;min-width:200px}
nav .mega-dropdown{width:100%;position:absolute;top:100%;left:0;background:#fff;overflow:hidden;padding:20px 35px;border-bottom:3px solid #34495e}
nav li li a{float:none;color:#333;display:block;padding:8px 10px;border-radius:3px;font-size:13px}
nav li li a:hover{background:#bdc3c7;background:#FAFBFB}
.mega-col{width:25%;float:left}
#menu-icon{position:absolute;right:0;top:50%;margin-top:-12px;margin-right:30px;display:none}
#menu-icon span{border:2px solid #fff;width:30px;margin-bottom:5px;display:block;-webkit-transition:all .2s;transition:all .1s}
@media only screen and (max-width: 1170px) {
    nav >ul>li >a{padding:35px 15px}
}
@media only screen and (min-width: 960px) {
    nav{display:block!important}
}
@media only screen and (max-width: 959px) {
    nav{display:none;width:100%;clear:both;float:none;max-height:400px;overflow-y:scroll}
    #menu-icon{display:inline;top:45px;cursor:pointer}
    #menu-icon.active .first{transform:rotate(45deg);-webkit-transform:rotate(45deg);margin-top:10px}
    #menu-icon.active .second{transform:rotate(135deg);-webkit-transform:rotate(135deg);position:relative;top:-9px;}
    #menu-icon.active .third{display:none}
    .search{float:none}
    .search input{width:100%}
    nav{padding:10px}
    nav ul{float:none}
    nav li{float:none}
    nav ul li a{float:none;padding:8px;display:block}
    #header nav ul ul{display:block;position:static;background:none;border:none;padding:0}
    #header nav a{color:#fff;padding:8px}
    #header nav a:hover{background:#fff;color:#333;border-radius:3px}
    #header nav ul li li a:before{content:"- "}
    .mega-col{width:100%}
}

$('#header').prepend('<div id="menu-icon"><span class="first"></span><span class="second"></span><span class="third"></span></div>');

    $("#menu-icon").on("click", function(){
    $("nav").slideToggle();
    $(this).toggleClass("active");
});

