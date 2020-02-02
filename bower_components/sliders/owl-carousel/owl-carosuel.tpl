https://webgrind.ru/
http://webgrind.ru/owl-carousel-2-nastroyka-slaydera/
https://weatherless.ru/javascript/jquery/owl-carousel-v-2-0-nastrojki/

<!--Подключаем обязательные файлы стилей и скриптов:Owl Carousel 2 — настройка слайдера  -->
Подключение Для версий:
<link href="css/owl.carousel.min.css" rel="stylesheet">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
/*
==================================================================
HTML
==================================================================
*/
<div class="owl-carousel">
 <div class="item"><img src="img/image-1.jpeg" alt=""></div>
 <div class="item"><img src="img/image-2.jpeg" alt=""></div>
 <div class="item"><img src="img/image-3.jpeg" alt=""></div>
 <div class="item"><img src="img/image-4.jpeg" alt=""></div>
</div>
/*
================================================================
JS
Создаем js файл и подключаем его после jquery-3.2.1.min.js и owl.carousel.min.js.
==============================================================
*/


$(document).ready(function() {

  $('.owl-carousel').owlCarousel({
    loop:true, //прокручивание элементов по кругу
    margin: 50, //отступы межу элементами
    nav:true, //отобразить элементы управления
    responsive:{
      0:{
        items:1
      }, //при ширине окна < 992 отображать 1 элемент
      992:{
        items:3
      }  //при ширине окна > 992 отображать 3 элемент
    }
  });

});


/*
==============================================================
2 слайдера на одной странице
Для создания 2 слайдеров необходимо задать для каждого класс
owl-carousel и свой собственный (slider-1 и slider-2).
И в js файле отдельно их подключить.
HTML
==============================================================
*/

<div class="owl-carousel slider-1">
  <div class="item"><img src="img/image-1.jpeg" alt=""></div>
  <div class="item"><img src="img/image-2.jpeg" alt=""></div>
  <div class="item"><img src="img/image-3.jpeg" alt=""></div>
  <div class="item"><img src="img/image-4.jpeg" alt=""></div>
</div>

<div class="owl-carousel slider-2">
  <div class="item"><img src="img/image-1.jpeg" alt=""></div>
  <div class="item"><img src="img/image-2.jpeg" alt=""></div>
  <div class="item"><img src="img/image-3.jpeg" alt=""></div>
  <div class="item"><img src="img/image-4.jpeg" alt=""></div>
</div>
/*
===============================================================
JS
===============================================================
*/

$(document).ready(function() {

$('.slider-1').owlCarousel({
    loop:true,
    margin: 50,
    nav:false,
  });

$('.slider-2').owlCarousel({
    loop:true,
    margin: 50,
    nav:false,
  });

});

/*
=======================================================
Создание собственных кнопок управления (next и prev)
======================================================
*/
<div class="owl-nav">
  <div class="owl-prev">prev</div>
  <div class="owl-next">next</div>
</div>
/*
==========================================================
Создадим свои собственные кнопки для перелистывания слайдера
HTML
==========================================================
*/

<p class="prev">Назад</p>
<p class="next">Далее</p>
<div class="owl-carousel slider-1">
  <div class="item"><img src="img/image-1.jpeg" alt=""></div>
  <div class="item"><img src="img/image-2.jpeg" alt=""></div>
  <div class="item"><img src="img/image-3.jpeg" alt=""></div>
  <div class="item"><img src="img/image-4.jpeg" alt=""></div>
</div>
/*
=============================================================
JS
=============================================================
*/

$(document).ready(function() {

var owl = $('.slider-1').owlCarousel({
    loop:true,
    margin: 50,
    nav:false,
    responsive:{
      0:{
        items:3
      }
    }
  });
  owl.owlCarousel();
  $('.next').click(function() {
    owl.trigger('next.owl.carousel');
  });
  $('.prev').click(function() {
    owl.trigger('prev.owl.carousel', [300]);
  });

});

/*
==========================================================
Для версий 1+
==========================================================
*/
<!-- Базовые стили -->
<link rel="stylesheet" href="owl-carousel/owl.carousel.css">

 <!-- Тема по умолчанию -->
<link rel="stylesheet" href="owl-carousel/owl.theme.css">

<!-- Сам плагин JS -->
<script src="owl-carousel/owl.carousel.js"></script>


<!-- Базовые стили -->
<link rel="stylesheet" href="owl-carousel/owl.carousel.css">

 <!-- Тема по умолчанию -->
<link rel="stylesheet" href="owl-carousel/owl.theme.css">

<!-- Сам плагин JS -->
<script src="owl-carousel/owl.carousel.js"></script>

<!--Для версий 2+ -->
<!-- Базовые стили -->
<link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">
<!-- Тема по умолчанию -->
<link rel="stylesheet" href="owlcarousel/owl.theme.default.min.css">

<script src="jquery.min.js"></script>
<!-- Сам плагин JS -->
<script src="owlcarousel/owl.carousel.min.js"></script>

<!-- Базовые стили -->
<link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">
<!-- Тема по умолчанию -->
<link rel="stylesheet" href="owlcarousel/owl.theme.default.min.css">

<script src="jquery.min.js"></script>
<!-- Сам плагин JS -->
<script src="owlcarousel/owl.carousel.min.js"></script>

<!--Разметка HTML (актуальна для обоих версий)
Настройки OWL Carousel не подразумевают под собой какую-то
конкретную разметку по коду. Вы можете применять плагин к
любым тегам, главное, чтобы сохранялась следующая структура:-->
<div class="owl-carousel">
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  ...
</div>

<div class="owl-carousel">
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  <div> Your Content </div>
  ...
</div>
<!--
Класс owl-carousel в данном фрагменте служит идентификатором
для того, чтобы плагин начал обрабатывать блок, как слайдер.
Теоретически, все прямые дочерние элементы будут отдельным слайдами.
Начало работы плагина (актуальна для обоих версий)
Для запуска скрипта достаточно просто объявить его:
-->
$(document).ready(function() {

  $(".owl-carousel").owlCarousel();

});


$(document).ready(function() {

  $(".owl-carousel").owlCarousel();

});

Для версий плагина 1+
$("#owl-example").owlCarousel({

    // Наиболее важные особенности
    items : 5,
    itemsCustom : false,
    itemsDesktop : [1199,4],
    itemsDesktopSmall : [980,3],
    itemsTablet: [768,2],
    itemsTabletSmall: false,
    itemsMobile : [479,1],
    singleItem : false,
    itemsScaleUp : false,

    //Базовая скорость
    slideSpeed : 200,
    paginationSpeed : 800,
    rewindSpeed : 1000,

    //Автозапуск слайдов
    autoPlay : false,
    stopOnHover : false,

    // Навигация (вперед-назад)
    navigation : false,
    navigationText : ["prev","next"],
    rewindNav : true,
    scrollPerPage : false,

    //Пагинация (слайд 1,2,3...)
    pagination : true,
    paginationNumbers: false,

    // Адаптивность
    responsive: true,
    responsiveRefreshRate : 200,
    responsiveBaseWidth: window,

    // CSS стили
    baseClass : "owl-carousel",
    theme : "owl-theme",

    //Lazy load (для изображений)
    lazyLoad : false,
    lazyFollow : true,
    lazyEffect : "fade",

    //Автоматическое определение высоты блоков
    autoHeight : false,

    //JSON
    jsonPath : false,
    jsonSuccess : false,

    //События мышки
    dragBeforeAnimFinish : true,
    mouseDrag : true,
    touchDrag : true,

    //Transitions
    transitionStyle : false,

    // Другое
    addClassActive : false,

    //Callbacks
    beforeUpdate : false,
    afterUpdate : false,
    beforeInit: false,
    afterInit: false,
    beforeMove: false,
    afterMove: false,
    afterAction: false,
    startDragging : false
    afterLazyLoad : false

})


$("#owl-example").owlCarousel({

    // Наиболее важные особенности
    items : 5,
    itemsCustom : false,
    itemsDesktop : [1199,4],
    itemsDesktopSmall : [980,3],
    itemsTablet: [768,2],
    itemsTabletSmall: false,
    itemsMobile : [479,1],
    singleItem : false,
    itemsScaleUp : false,

    //Базовая скорость
    slideSpeed : 200,
    paginationSpeed : 800,
    rewindSpeed : 1000,

    //Автозапуск слайдов
    autoPlay : false,
    stopOnHover : false,

    // Навигация (вперед-назад)
    navigation : false,
    navigationText : ["prev","next"],
    rewindNav : true,
    scrollPerPage : false,

    //Пагинация (слайд 1,2,3...)
    pagination : true,
    paginationNumbers: false,

    // Адаптивность
    responsive: true,
    responsiveRefreshRate : 200,
    responsiveBaseWidth: window,

    // CSS стили
    baseClass : "owl-carousel",
    theme : "owl-theme",

    //Lazy load (для изображений)
    lazyLoad : false,
    lazyFollow : true,
    lazyEffect : "fade",

    //Автоматическое определение высоты блоков
    autoHeight : false,

    //JSON
    jsonPath : false,
    jsonSuccess : false,

    //События мышки
    dragBeforeAnimFinish : true,
    mouseDrag : true,
    touchDrag : true,

    //Transitions
    transitionStyle : false,

    // Другое
    addClassActive : false,

    //Callbacks
    beforeUpdate : false,
    afterUpdate : false,
    beforeInit: false,
    afterInit: false,
    beforeMove: false,
    afterMove: false,
    afterAction: false,
    startDragging : false
    afterLazyLoad : false

})
/*
Для версий плагина 2+
В список включены также опции от встроенных плагинов.
Опция 	Тип данных 	По умолчанию 	Описание
items 	Number 	3 	Количество элементов, которые вы хотите увидеть на экране.
margin 	Number 	0 	Отступ в пикселях справа от слайда.
loop 	Boolean 	false 	Бесконечная прокрутка элементов.
center 	Boolean 	false 	Отцентровать элемент. Хорошо работает даже с нечетным количеством элементов.
mouseDrag 	Boolean 	true 	Включение перетягивания слайдов мышью.
touchDrag 	Boolean 	true 	Включение перетягивания слайдов на тач-скрине.
pullDrag 	Boolean 	true 	Возможность тянуть слайды за границы.
freeDrag 	Boolean 	false 	Тоже, только к отдельному слайду.
stagePadding 	Number 	0 	Отступы слева и справа (чтобы видеть соседние слайды).
merge 	Boolean 	false 	Слияние элементов. Ищет data-merge='{number}’ внутрли элемента…
mergeFit 	Boolean 	true 	Выбираются объединенные элементы, если экран меньше, чем значение элемента.
autoWidth 	Boolean 	false 	Автоматический подбор ширины. Попробуйте использовать свойства ширины в атрибуте style.
startPosition 	Number/String 	0 	Стартовая позиция или URL хэш-строка ‘#id’.
URLhashListener 	Boolean 	false 	Реагировать на изменение хэша URL.
nav 	Boolean 	false 	Выводит кнопки вперед\назад.
rewind 	Boolean 	true 	Вернуться назад, когда граница карусели достигнута.
navText 	Array 	[‘next’,’prev’] 	Текст для кнопок. Поддерживает HTML.
navElement 	String 	div 	Тип элемента DOM для одной направленной навигационной ссылки.
slideBy 	Number/String 	1 	Навигация по слайдам x.’страница’.
dots 	Boolean 	true 	Показывать точки навигации.
dotsEach 	Number/Boolean 	false 	Показывать точки каждого элемента X.
dotData 	Boolean 	false 	Использование data-dot содержимого.
lazyLoad 	Boolean 	false 	«Ленивая» загрузка изображений.
autoplay 	Boolean 	false 	Автовоспроизведение.
autoplayTimeout 	Number 	5000 	Задержка для автовоспроизведения.
autoplayHoverPause 	Boolean 	false 	Пауза при наведении.
smartSpeed 	Number 	250 	Рассчет скорости. Бета.
fluidSpeed 	Boolean 	Number 	Рассчет скорости. Бета.
autoplaySpeed 	Number/Boolean 	false 	Скорость автовоспроизведения.
navSpeed 	Number/Boolean 	false 	Скорость навигации.
dotsSpeed 	Boolean 	Number/Boolean 	Скорость пагинации.
dragEndSpeed 	Number/Boolean 	false 	Скорость при «отпускании» слайда.
callbacks 	Boolean 	true 	Включение событий коллбеков.
responsive 	Object 	empty object 	Объект для опций адаптивности.
responsiveRefreshRate 	Number 	200 	Адаптивная частота обновления.
responsiveBaseElement 	DOM element 	window 	Указывает на любой DOM элемент.
video 	Boolean 	false 	Включение выборки с видео-сервисов.
videoHeight 	Number/Boolean 	false 	Установка высоты для видео.
videoWidth 	Number/Boolean 	false 	Установка ширины для видео.
animateOut 	String/Boolean 	false 	Класс для CSS3 анимации исчезновения.
animateIn 	String/Boolean 	false 	Класс для CSS3 анимации появления.
info 	Function 	false 	Обратный вызов для получения базовой информации (текущий элемент/страница/ширина).
nestedItemSelector 	String/Class 	false 	Используйте его, если элементы карусели глубоко вложены в какой-то сгенерированный контент. Не используйте точку перед именем класса.
itemElement 	String 	div 	Тип DOM-элемента для слайда.
stageElement 	String 	div 	Тип DOM-элемента для шага прокрутки.
navContainer 	String/Class/ID/Boolean 	false 	Устанавливает ваш собственный контейнер для навигации.
dotsContainer 	String/Class/ID/Boolean 	false 	Устанавливает ваш собственный контейнер для пагинации.
*/
/*
=============================================================
https://owlcarousel2.github.io/OwlCarousel2/demos/basic.html
Basic
=============================================================
html
=============================================================
*/


<div class="owl-carousel owl-theme">
    <div class="item"><h4>1</h4></div>
    <div class="item"><h4>2</h4></div>
    <div class="item"><h4>3</h4></div>
    <div class="item"><h4>4</h4></div>
    <div class="item"><h4>5</h4></div>
    <div class="item"><h4>6</h4></div>
    <div class="item"><h4>7</h4></div>
    <div class="item"><h4>8</h4></div>
    <div class="item"><h4>9</h4></div>
    <div class="item"><h4>10</h4></div>
    <div class="item"><h4>11</h4></div>
    <div class="item"><h4>12</h4></div>
</div>
/*
=======================================
Responsive
=======================================
*/
responsive : {
    // breakpoint from 0 up
    0 : {
        option1 : value,
        option2 : value,
        ...
    },
    // breakpoint from 480 up
    480 : {
        option1 : value,
        option2 : value,
        ...
    },
    // breakpoint from 768 up
    768 : {
        option1 : value,
        option2 : value,
        ...
    }
}
/*
Live Example
*/
$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:3,
            nav:false
        },
        1000:{
            items:5,
            nav:true,
            loop:false
        }
    }
});
/*
Center with loop
*/
$('.loop').owlCarousel({
    center: true,
    items:2,
    loop:true,
    margin:10,
    responsive:{
        600:{
            items:4
        }
    }
});
$('.nonloop').owlCarousel({
    center: true,
    items:2,
    loop:false,
    margin:10,
    responsive:{
        600:{
            items:4
        }
    }
});

/*
Auto Width
*/
$('.owl-carousel').owlCarousel({
    margin:10,
    loop:true,
    autoWidth:true,
    items:4
})
/*
html
*/
<div class="owl-carousel owl-theme">
    <div class="item" style="width:250px"><h4>1</h4></div>
    <div class="item" style="width:100px"><h4>2</h4></div>
    <div class="item" style="width:500px"><h4>3</h4></div>
    <div class="item" style="width:100px"><h4>4</h4></div>
    <div class="item" style="width:50px"><h4>6</h4></div>
    <div class="item" style="width:250px"><h4>7</h4></div>
    <div class="item" style="width:120px"><h4>8</h4></div>
    <div class="item" style="width:420px"><h4>9</h4></div>
    <div class="item" style="width:120px"><h4>10</h4></div>
    <div class="item" style="width:300px"><h4>11</h4></div>
    <div class="item" style="width:450px"><h4>12</h4></div>
    <div class="item" style="width:220px"><h4>13</h4></div>
    <div class="item" style="width:150px"><h4>14</h4></div>
    <div class="item" style="width:600px"><h4>15</h4></div>
</div>
/*
Url Hash Navigation
*/

$('.owl-carousel').owlCarousel({
        items:4,
        loop:false,
        center:true,
        margin:10,
        URLhashListener:true,
        autoplayHoverPause:true,
        startPosition: 'URLHash'
    });
/*
stagePadding
*/
$('.owl-carousel').owlCarousel({
    stagePadding: 50,
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})

<div class="owl-carousel owl-theme">
    <div class="item"><h4>1</h4></div>
    <div class="item"><h4>2</h4></div>
    <div class="item"><h4>3</h4></div>
    <div class="item"><h4>4</h4></div>
    <div class="item"><h4>5</h4></div>
    <div class="item"><h4>6</h4></div>
    <div class="item"><h4>7</h4></div>
    <div class="item"><h4>8</h4></div>
    <div class="item"><h4>9</h4></div>
    <div class="item"><h4>10</h4></div>
    <div class="item"><h4>11</h4></div>
    <div class="item"><h4>12</h4></div>
</div>

/*
Right To Left
*/

$('.owl-carousel').owlCarousel({
    rtl:true,
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})
/*
html
*/
<div class="owl-carousel owl-theme">
    <div class="item"><h4>1</h4></div>
    <div class="item"><h4>2</h4></div>
    <div class="item"><h4>3</h4></div>
    <div class="item"><h4>4</h4></div>
    <div class="item"><h4>5</h4></div>
    <div class="item"><h4>6</h4></div>
    <div class="item"><h4>7</h4></div>
    <div class="item"><h4>8</h4></div>
    <div class="item"><h4>9</h4></div>
    <div class="item"><h4>10</h4></div>
    <div class="item"><h4>11</h4></div>
    <div class="item"><h4>12</h4></div>
</div>

















