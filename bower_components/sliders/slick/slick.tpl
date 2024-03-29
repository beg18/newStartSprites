https://vaden-pro.ru/blog/java-script/slayder-slick
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
/*====================================================================*/
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
/*====================================================================*/
 <section id="js_review" class="review">
    <h2 class="visually-hidden">Hidden title</h2>
    <div class="wrapper">
      <header class="section__header">
        <h2 class="section__title">
          Отзывы наших клиентов
        </h2>
      </header>
      <article id="js_review-slider" class="review__wrap">
        <h2 class="visually-hidden">Hidden title</h2>
        <section class="review__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="iframe-wrap">
            <iframe src="https://www.youtube.com/embed/fKN6P6xzbPc"
                    frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
          </div>
        </section>
        <!-- End review__inner-1 -->
        <section class="review__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="iframe-wrap">
            <iframe src="https://www.youtube.com/embed/sqGkmb7mNEI?start=3"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
          </div>
        </section>
        <!-- End review__inner-2 -->
        <section class="review__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="iframe-wrap">
            <iframe src="https://www.youtube.com/embed/MNNLkVIopJo?start=1"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
          </div>
        </section>
        <!-- End review__inner-3 -->
        <section class="review__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="iframe-wrap">
            <iframe src="https://www.youtube.com/embed/E4AnkCkiMW0?start=2"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
          </div>
        </section>
        <!-- End review__inner-4 -->
        <section class="review__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="iframe-wrap">
            <iframe src="https://www.youtube.com/embed/Ju4qrfZCFws?start=2"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
          </div>
        </section>
        <!-- End review__inner-5 -->
      </article>
      <!-- End #js_review-slider -->
    </div>
    <!-- //wrapper -->
  </section>
  <!-- End review -->
/*====================================================================*/
.review {

  .prev {
    border: none;
    outline: none;
    display: block;
    .sprite(@s-left-arrow);
    .display-topleft();
    top: 215px;
    z-index: 10;
  }

  .next {
    border: none;
    outline: none;
    display: block;
    .sprite(@s-right-arrow);
    .display-topright();
    top: 215px;
    z-index: 10;
  }

  .slick-dots {
    position: absolute;
    bottom: 137px;
  }
  .slick-dots li {
    margin: 0 3px;
  }
  .slick-dots li button::before {
    font-family: slick;
    font-size: 40px;
    line-height: 20px;
  }
  .slick-dots li.slick-active button::before {
    font-size: 50px;
    opacity: .75;
    color: @darkPink_color;
  }
}

.review__inner {

}

.iframe-wrap {
  width: 80%;
  margin: 0 auto;
  .iframe-responsive-wrapper();

  iframe {
    height: auto;
    min-height: 500px;
  }
}


/*====================================================================*/
 $('#js_review-slider').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        prevArrow: '<button type="submit" class="prev"></button>',
        nextArrow: '<button type="submit" class="next"></button>',
        responsive: [
            {
                breakpoint: 600,
                //сообщает, при какой ширине экрана нужно включать настройки
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    infinite: true,
                }
            }
        ]
    });
<div class="slick-slider">
 	<div>Слайд1</div>
  <div> Слайд2</div>
  <div> Слайд3</div>
</div>

$(document).ready(function(){
  $('.slick-slider).slick({
    setting-name: setting-value
  });
});
/*===============Примеры применения разных конфигураций слайдера Slick===========*/
//Одиночный слайд
//Иницилизируем слайдер с параметрами по умолчанию
$('.single-item').slick();

//Множественный слайдер
$('.multiple- slide ').slick({
  infinite: true,
  slidesToShow: 3,
  //количество слайдов, которые выводятся на экране
  slidesToScroll: 2
  //количество слайдов, которые перелистываются за один раз
});
//Несколько слайдов
//Указываем что будем выводить по 3 слайда на экран
$('.multiple-items').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3
});
//Адаптивный слайдер
//Настройки по выводу слайдов в зависимости от разрешения экрана
$('.responsive').slick({
      dots: true,
      infinite: false,
      speed: 300,
      slidesToShow: 4,
      slidesToScroll: 4,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
    });
//Различная ширина слайдов
$('.variable-width').slick({
  dots: true,
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  centerMode: true,
  variableWidth: true
});
//Различная высота слайдов
$('.one-time').slick({
  dots: true,
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  adaptiveHeight: true
});
//Не зацикленный слайдер
$('.uncycle').slick({
  infinite: false,
  speed: 350,
// определяем скорость перелистывания
  slidesToShow: 4,
//количество слайдов для показа
  slidesToScroll: 2,
//сколько слайдов за раз перелистнется
});

//Примечание
$('.uncycle').slick({
  infinite: false,
  speed: 350,
// определяем скорость перелистывания
  slidesToShow: 4,
//количество слайдов для показа
  slidesToScroll: 2,
//сколько слайдов за раз перелистнется
responsive: [
    {
      breakpoint: 600,
//сообщает, при какой ширине экрана нужно включать настройки
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        infinite: true,
      }
    }
]
});

//Переменная ширина и высота слайдов
$('.var-width').slick({
  infinite: true,
  speed: 250,
// определяем скорость перелистывания

  slidesToShow: 1,
//количество слайдов для показа
  centerMode: true,
//текущий слайд по центру
  variableWidth: true
//установим переменную ширину  аналогичный параметр adaptiveHeight: true
});
//Настройка с Data атрибутом
//Начиная с Slick 1.5 вы можете добавлять настройки, используя атрибут data-slick.
//Вам все еще нужно вызвать $(element).slick(), чтобы
//инициализировать Slick на элементе.
<div data-slick='{"slidesToShow": 4, "slidesToScroll": 4}'>
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
//Настройка слайдера с помощью атрибута
<div class="slick-slider" data-slick='{"slidesToShow": 3, "slidesToScroll": 1}'>
 	<div>Слайд1</div>
  <div> Слайд2</div>
  <div> Слайд3</div>
</div>
//Режим центрирования слайда
$('.center').slick({
  centerMode: true,
  centerPadding: '60px',
  slidesToShow: 3,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 3
      }
    },
    {
      breakpoint: 480,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 1
      }
    }
  ]
});
//Выводим текущий слайдер в центр экрана
$('.middle').slick({
  centerMode: true,
//центруем текущий слайд
  centerPadding: '50px',
//слегка увеличиваем текущий слайд
  slidesToShow: 3
//выводим 3 слайда для просмотра
});
//Ленивая загрузка
// Используйте леневую загрузку устаноиви ее в data-lazy атрибудет
// В нем укажите источник к файлу в место SRC

<img data-lazy="img/lazyfonz1.png"/>

$('.lazy').slick({
  lazyLoad: 'ondemand',
  slidesToShow: 3,
  slidesToScroll: 1
});

//Плавное переключение
lazyLoad: 'ondemand'
//атрибут следует записывать так
<img data-lazy =" images/slaid.jpg">
//Плавное переключение без перемещения
$('.fade').slick({
  infinite: true,
  speed: 400,
  fade: true,
  cssEase: 'linear'
});
//Автоматическая прокрутка
$('.autoplay').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
});

//Синхронизирующийся слайдер
$('.main').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  fade: true,
  asNavFor: '.slider-nav'
});
$('.second).slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  asNavFor: '.slider-for',
  dots: true,
  centerMode: true,
  focusOnSelect: true
});
//Смена слайдов размытием Fade
$('.fade').slick({
  dots: true,
  infinite: true,
  speed: 500,
  fade: true,
  cssEase: 'linear'
});
//Добавление и удаление слайдов
$('.add-remove').slick({
  slidesToShow: 3,
  slidesToScroll: 3
});
$('.js-add-slide').on('click', function() {
  slideIndex++;
  $('.add-remove').slick('slickAdd','<div><h3>' + slideIndex + '</h3></div>');
});

$('.js-remove-slide').on('click', function() {
  $('.add-remove').slick('slickRemove',slideIndex - 1);
  if (slideIndex !== 0){
    slideIndex--;
  }
});
//Фильтрация слайдов
$('.filtering').slick({
  slidesToShow: 4,
  slidesToScroll: 4
});

var filtered = false;

$('.js-filter').on('click', function(){
  if (filtered === false) {
    $('.filtering').slick('slickFilter',':even');
    $(this).text('Unfilter Slides');
    filtered = true;
  } else {
    $('.filtering').slick('slickUnfilter');
    $(this).text('Filter Slides');
    filtered = false;
  }
});
//Уничтожить объект
//Если ты действительно хочешь быть тем парнем ...
//Уничтожить объект слайдера
$('.your-slider').slick('unslick');


//Настройки:

    аccessibility – начальное значение этого параметра установлено как true, он отвечает за подключения навигационных кнопок для слайдера – это стрелки вперед и назад, а также кнопки в виде точек.
    adaptiveHeight – применяется только к одиночному слайдеру, у которого будет изменятся высота родительского контейнера в зависимости от высоты слайдера. В начальных условиях настройка не подключена.
    autoplay – настраивает перелистывание слайдов в автоматическом режиме, без вмешательства пользователя. Стандартное значение этой настройки соответствует false.
    autoplaySpeed – этот параметр является вспомогательным для autoplay и устанавливает промежуток времени, по истечении которого будет осуществлено автоматическое перелистывание слайда. Изначально для него прописано значение 3000 миллисекунд.
    arrows – подключает к слайдеру стрелки вперед и назад. С помощью таблицы внешних стилей можно изменять положение и внешний вид этих стрелок.
    asNavFor – устанавливает навигационную связь между двумя слайдерами посредством идентификатора или класса. В начальных условиях параметр соответствует нулевому значению.
    prevArrow – позволяет изменить внешний вид стандартной навигационной стрелки, которая отлистывает предыдущий слайд.
    nextArrow – аналогичен функциям предыдущему параметру, но отвечает за стрелку, переключающую слайд вперед.
    centerMode – фиксирует текущий слайд по центру родительского контейнера, изначально параметр выключен.
    centerPadding – при включенном центральном режиме показа текущего слайда (предыдущий параметр) устанавливает для этого слайда внутренний отступ, что визуально позволяет увеличивать текущий слайд.
    cssEase – отвечает за анимацию переключения картинок, может делать ее плавной или более резкой. Принимает стандартное значение 'ease'.
    customPaging – позволяет вставлять собственный шаблон для просмотра слайдера.
    dots – подключает точки-переключатели, по умолчанию находится в выключенном состоянии.
    draggable – подключает возможность перелистывания слайдов зажатием мышки. То есть, если навести на слайдер курсор мыши, зажать ее и передвинуть в сторону, то и слайд переключится на следующий.
    fade – создает эффект затухания слайда при переключении, анимационный эффект.
    focusOnSelect – фокусирует заданный элемент слайдера.
    easing – позволяет установить особый анимационный режим при переключении картинок.
    edgeFriction – отключает переключение слайдов на последнем элементе. Срабатывает только в том случае, если слайдер не зациклен.
    infinite – зацикливает показ слайдов. Это значит при переключении последней картинки слайд-шоу начнется сначала.
    initialSlide – определяет картинку, с которой начнется показ слайд-шоу. По умолчанию слайдер для старта выбирает первое по порядку изображение.
    lazyLoad – позволяет установить режим подгрузки следующих слайдов. Доступно только 2 значения для настройки: 'ondemand' и 'progressive', причем последнее является значением по умолчанию.
    pauseOnHover – останавливает перелистывание слайдов при наведении курсора мыши на тело слайдера. Работает, только если определено автоматическое переключение слайдов.
    pauseOnDotsHover - останавливает перелистывание слайдов при наведении курсора мыши на точечные переключатели. Работает, только если определено автоматическое переключение слайдов.
    respondTo – вызывает реакцию на изменения ширины окна браузера. Для использования доступны три значения: 'window', 'slider' или 'min'.
    responsive – позволяет адаптировать настройки слайдера под ширину экрана. Отличается от предыдущей настройки тем, что ограничение ширины определяется точным значением в пикселях. Используется для адаптивной верстки под мобильные устройства.
    slidesToShow – позволяет установить количество картинок, выводимых в видимой зоне. Изначально показывается 1 слайд, но этим значением можно варьировать.
    slidesToScroll – сообщает слайдеру сколько нужно поменять картинок при переключении.
    speed – фиксирует скорость, с которой будет осуществляться переключение слайдов.
    variableWidth – адаптирует ширину контейнеров слайдера под ширину каждой показываемой картинки.



/* ====================Slick.js http://kenwheeler.github.io/slick/======================

    <div class="$className$">

        <button id="js-slider-prev" class="$className$-arrow__prev"></button>
        <button id="js-slider-next" class="$className$-arrow__next"></button>

        <div id="js-testimonials-slider">

            <div id="js-slide" class="slide">
                <div class="$className$__item">
                    <p class="$className$-text">
                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author">
                    </p>
                </div>
            </div>

            <div id="js-slide" class="slide">
                <div class="$className$__item">
                    <p class="$className$-text">
                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author">
                    </p>
                </div>
            </div>

            <div id="js-slide" class="slide">
                <div class="$className$__item">
                    <p class="$className$-text">
                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author">
                    </p>
                </div>
            </div>

            <div id="js-slide" class="slide">
                <div class="$className$__item">
                    <p class="$className$-text">

                    </p>
                    <div class="$className$-photo">
                        <img src="http://placehold.it/80" width="80" height="80" alt="">
                    </div>
                    <p class="$className$-author"></p>
                </div>
            </div>
        </div><!-- /$className$-slider -->

    </div><!-- /.testimonials -->
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
/*=====================================slick CSS=================================================*/
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

.slick-prev,
.slick-next {
    border: 0;
    color: transparent;
    font-size: 0;

    width: 20px;
    height: 30px;
    background: url("../i/slider-arrows.png") no-repeat;

    position: absolute;
    top: 50%;
    z-index: 1;
    margin-top: -15px;
    opacity: .8;

    &:focus {
        outline: 0;
    }

    &:hover {
        opacity: 1;
        cursor: pointer;
    }
}

.slick-prev {
    left: -25px;
}

.slick-next {
    right: -25px;
    background-position: -20px 0;
}



 //DOTS

.slick-slider {
    margin-bottom: 30px;
}

.slick-dots {
    position: absolute;
    bottom: -45px;
    list-style: none;
    display: block;
    text-align: center;
    padding: 0;
    width: 100%;

    li {
        position: relative;
        display: inline-block;
        margin: 0 5px;
        padding: 0;
        cursor: pointer;

        button {
            border: 0;
            padding: 0;
            width: 10px;
            height: 10px;
            background-color: #cfcfcf;
            border-radius: 50%;
            opacity: .8;

            color: transparent;
            font-size: 0;

            &:hover {
                cursor: pointer;
                opacity: 1;
            }

            &:hover, &:focus {
                outline: none;
            }
        }

        &.slick-active button {
            background-color: #e84c3d;
            opacity: 1;
        }
    }
}





.slick-slider {
    position: relative;
    display: block;
    box-sizing: border-box;
    user-select: none;
    -ms-touch-action: pan-y;
    touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}
.slick-list {
    position: relative;
    overflow: hidden;
    display: block;
    margin: 0;
    padding: 0;

    &:focus {
        outline: none;
    }

    &.dragging {
        cursor: pointer;
        cursor: hand;
    }
}
.slick-slider .slick-track,
.slick-slider .slick-list {
    transform: translate3d(0, 0, 0);
}

.slick-track {
    position: relative;
    left: 0;
    top: 0;
    display: block;

    &:before,
    &:after {
        content: "";
        display: table;
    }

    &:after {
        clear: both;
    }

    .slick-loading & {
        visibility: hidden;
    }
}
.slick-slide {
    float: left;
    height: 100%;
    min-height: 1px;

    &:focus {
        outline: 0;
    }
    img {
        display: inline-block;
    }
    &.slick-loading img {
        display: none;
    }

    display: none;

    &.dragging img {
        pointer-events: none;
    }

    .slick-initialized & {
        display: block;
    }

    .slick-loading & {
        visibility: hidden;
    }

    .slick-vertical & {
        display: block;
        height: auto;
        border: 1px solid transparent;
    }
}
.slick-arrow.slick-hidden {
    display: none;
}

/*=====================================slick JS=================================================*/

    $('#js-testimonials-slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        dots: true,
        autoplay: true,
        autoplaySpeed: 4000,
        fade: false
    });


    $("#js-slider-prev").on("click", function() {
        $('#js-testimonials-slider').slick("slickPrev");
    });

    $("#js-slider-next").on("click", function() {
        $('#js-testimonials-slider').slick("slickNext");
    });
/*===========================================================================*/
    <section class="review" id="review">
      <div class="container">
        <h2>Клиенты о нас</h2>
        <div class="row">
          <div class="slider_ex">
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
            <div class="review-block">
              <div class="media review-avatar">
                <div class="media-left">
                  <img class="media-object" src="img/review/ava.png" alt="Анна Маслова">
                </div>
                <div class="media-body">
                  <p class="review-avatar-name">Анна Маслова, Москва</p>
                </div>
              </div>
              <div class="review-block-text">
                <h3>Вопрос по недвижимости</h3>
                <p>Если бы не компания «Найдем Адвоката», то моя семья могла бы совершить роковую ошибку и попасть в лапы к аферистам. Юрист за 2 дня смог досудебно полностью урегулировать конфликт. Спасибо Вам</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

/*==========================================JS===========================================*/
<script src="js/slick.min.js"></script>
    <script>
      $(document).ready(function(){
        $('.slider_ex').slick({
          infinite: true,
          speed: 300,
          slidesToShow: 3,
          slidesToScroll: 1,
          prevArrow: '<button type="submit" class="prev"></button>',
          nextArrow: '<button type="submit" class="next"></button>',
          responsive: [
            {
              breakpoint: 991,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 767,
              settings: {
                adaptiveHeight: true,
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
          ]
        });
      });
    </script>














