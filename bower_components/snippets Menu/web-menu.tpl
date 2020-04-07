<header>
    <nav>
        <div class="container">
            <ul class="menu">
                <li class="menu_item"><a href="#" class="menu_link">Главная</a></li>
                <li class="menu_item"><a href="#require" class="menu_link">Со своим автомобилем</a></li>
                <li class="menu_item"><a href="#require" class="menu_link">На автомобиле компании</a></li>
                <li class="menu_item"><a href="#" class="menu_link">Требования</a></li>
                <li class="menu_item"><a href="#" class="menu_link">Контакты</a></li>
                <li class="menu_item"><a href="#" class="menu_link">Оставить заявку</a></li>
            </ul>
        </div>
        <div class="hamburger">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </nav>
</header>

header{
    position: relative;
    height: 50px;
}

nav{
    position: fixed;
    width: 100%;
    height: 50px;
    background: #212121;
    z-index: 5;
}

.hamburger{
    display: none;
}

.menu{
    display: flex;
    justify-content: space-between;
    padding: 13px 70px;
    margin: 0;
    list-style: none;
}

.menu_link{
    color: #ffffff;
    font-size: 15px;
    font-weight: 300;
}

.menu_link:hover{
    text-decoration: none;
    color: #1eacc7;
}

.menu_item{
    border-right: 2px dotted black;
    padding-right: 28px;
}

.menu_item:last-child{
    border-right: none;
}

@media (max-width: 1200px){
    .menu_item{
        padding-right: 20px;
    }

    .menu_link{
        font-size: 13px;
    }

}

@media (max-width: 991px){

    .menu_item{
        padding-right: 8px;
    }

    .menu_link{
        font-size: 10px;
    }

}

@media (max-width: 767px){

    .menu{
        position: fixed;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        top: 0;
        left: -100%;
        width: 50%;
        height: 100vh;
        padding: 20px 15px;
        background: rgba(0, 0, 0, 0.8);
        transition: 0.6s all;
    }

    .menu_active{
        left: 0;
    }

    .menu_item{
        padding-right: 0;
        border: none;
        margin: 10px 0;
    }

    .menu_link{
        font-size: 20px;
    }

    .hamburger{
        display: block;
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        width: 26px;
        height: 12px;
    }

    .hamburger span{
        display: block;
        height: 2px;
        width: 100%;
        background: #fff;
        margin-bottom: 2px;
        -webkit-transition: 0.5s all;
        transition: 0.5s all;
    }

    .hamburger_active span{
        margin-bottom: -2px;
    }

    .hamburger_active span:nth-child(1){
        transform: translateY(3px) rotate(-45deg);
    }

    .hamburger_active span:nth-child(2){
        display: none;
    }

    .hamburger_active span:nth-child(3){
        transform: translateY(3px) rotate(45deg);
    }

    .xs-hidden{
        display: none;
    }

    .xs-visible{
        display: block;
    }
}

@media (max-width: 575px){
    nav{
        height: 30px;
    }

    header{
        height: 30px;
    }

    .menu{
        width: 85%;
    }

    .menu_item{
        width: 100%;
        text-align: center;
        padding: 5px 0;
    }

    .menu_link{
        display: block;
    }

    .hamburger_active span:nth-child(1){
        transform: translateY(5px) rotate(-45deg);
    }

    .hamburger_active span:nth-child(3){
        transform: translateY(5px) rotate(45deg);
    }
}

window.addEventListener('DOMContentLoaded', () => {
    const menu = document.querySelector('.menu'),
    menuItem = document.querySelectorAll('.menu_item'),
    hamburger = document.querySelector('.hamburger');

    hamburger.addEventListener('click', () => {
        hamburger.classList.toggle('hamburger_active');
        menu.classList.toggle('menu_active');
    });

    menuItem.forEach(item => {
        item.addEventListener('click', () => {
            hamburger.classList.toggle('hamburger_active');
            menu.classList.toggle('menu_active');
        })
    })
})


document.addEventListener("DOMContentLoaded", function() {
    var menu = document.querySelector('.menu__list'),
        menuItem = document.querySelectorAll('.menu__item'),
        hamburger = document.querySelector('.humburger');

        hamburger.addEventListener('click', function() {
            hamburger.classList.toggle('humburger-active');
             menu.classList.toggle('menu__list-active');
        });

        menuItem.forEach(function (item) {
            item.addEventListener('click', function () {
                hamburger.classList.toggle('hamburger_active');
                menu.classList.toggle('menu_active');
            });
        });
});
