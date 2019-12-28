<!--===================================================================================
https://hmil.ru/ustanovka-karuseli-bxslider/
https://hmil.ru/generator-bxslider/
http://www.seomark.ru/slideshow_bxslider.html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
======================================================================================-->

<!-- ===============================Примеры BxSlider=============================================== -->

<div class="slider">
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
</div>

<script>
  $(document).ready(function(){
    $('.slider').bxSlider();
  });
</script>

<!-- ==============================================================================
Пример №2(Карусель)
============================================================================== -->
<div class="slider">
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
</div>

<script>
$(document).ready(function(){
  $('.slider').bxSlider({
    minSlides: 1, // Это минимальное количество слайдов
    maxSlides: 3, // Это максимальное количество слайдов
    slideWidth: 258 // Ширина одного слайда
  });
});
</script>

<!-- ==============================================================================
Пример №3(Карусель)
============================================================================== -->

<section id="js_bxslider" class="bxslider">
<h2 class="visually-hidden">Hidden title</h2>
  <!--<div class="js-slider__pager">-->
    <!--<a href="#" data-slide-index="0"></a>-->
    <!--<a href="#" data-slide-index="1"></a>-->
    <!--<a href="#" data-slide-index="2"></a>-->
  <!--</div>-->
  <ul class="slider-list">
      <li class="slider-item">
          <img src="i/@2x/slide-1.jpg" class="slider-pic" alt="slider">
      </li>
      <li class="slider-item">
        <img src="i/@2x/slide-2.jpg" class="slider-pic" alt="slider">
      </li>
      <li class="slider-item">
        <img src="i/@2x/slide-3.jpg" class="slider-pic" alt="slider">
      </li>
  </ul>
  <div class="slider-info">
    <h3 class="slider-title">FULL WINTER KIT</h3>
    <p class="slider-goods">
      Half Jacket + Skiny Trousers + Boot leather
    </p>
    <p class="slider-descr">
      Lorem Ipsum is simply dummy text of the printing and typesetting industry
    </p>
    <div class="slider-action">
      <span class="slider-price"> Price: 120$</span>
      <span class="slider-bue">Order Now</span>
    </div>
  </div>
</section>
<!-- End bxslider -->

<!--
=============================
BXSLIDER
=============================
-->

.bxslider .bx-viewport {
  left: 0;
  box-shadow: none;
  background: none;
  border: none;
}

.bx-wrapper .bx-pager.bx-default-pager {
  position: absolute;
  top: 60%;
  left: 5%;
  transform: translate(0%, -50%);
  z-index: 10;
}

.bx-wrapper .bx-pager.bx-default-pager .bx-pager-item {
  margin-bottom: 10px;
}

.bx-wrapper .bx-pager.bx-default-pager .bx-pager-item a {
  display: block;
  width: 10px;
  width: 0.625rem;
  height: 20px;
  height: 1.25rem;
  background-color: #fff;
}

.bx-wrapper .bx-pager.bx-default-pager .bx-pager-item a.active {
  display: block;
  width: 10px;
  width: 0.625rem;
  height: 40px;
  height: 2.5rem;
  background-color: #ff5912;
}

.bx-wrapper .bx-pager .bx-pager-item,
.bx-wrapper .bx-controls-auto .bx-controls-auto-item {
  display: block;
}

.slider-info {
  width: 100%;
  max-width: 600px;
  max-width: 37.5rem;
  position: absolute;
  top: 50%;
  left: 10%;
  transform: translate(0%, -50%);
}

.slider-title {
  font-size: 52px;
  font-size: 3.25rem;
  line-height: 130%;
  margin: 0;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  text-transform: uppercase;
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 700;
  font-style: normal;
  color: #ff5912;
}

.slider-goods {
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 1.125rem;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  line-height: 24px;
  line-height: 1.5rem;
  color: #495662;
}

.slider-descr {
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 1rem;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  line-height: 30px;
  line-height: 1.875rem;
  color: #495662;
  margin-bottom: 30px;
}

.slider-action {
  margin-left: -15px;
  margin-right: -15px;
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 1.125rem;
  position: relative;
  z-index: 20;
}

.slider-price {
  color: #495662;
  box-sizing: border-box;
  word-wrap: break-word;
  margin-left: 15px;
  margin-right: 15px;
  display: inline-block;
  vertical-align: top;
  cursor: pointer;
}

.slider-price:hover {
  color: #ff5912;
}

.slider-bue {
  box-sizing: border-box;
  word-wrap: break-word;
  margin-left: 15px;
  margin-right: 15px;
  display: inline-block;
  vertical-align: top;
  color: #495662;
  cursor: pointer;
  padding-left: 30px;
}

.slider-bue:hover {
  color: #ff5912;
}

.slider-bue::before {
  content: "";
  background-image: url('../i/sprite/sprite.png');
  background-position: -496px -451px;
  width: 24px;
  height: 17px;
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  cursor: pointer;
}


<script>
  $('.slider-list').bxSlider({
        /*pageCustom: '.js-slider__pager',  pagerCustom: ОШИБКА-> pageCustom:*/
        speed: 600,
        hideControlOnEnd: true,
        adaptiveHeight: true,
        pagerType: 'full',
        auto: true,
        pause: 6000
    });

</script>
<!--
==============================================
Пример №4

Обычный слайдер с настройками по умолчанию: HTML
================================================
-->





<script>
  $('.slider-list').bxSlider({
        pagerCustom: '.js-slider__pager',
        controls: false
    });

</script>

<!--
==============================================
Пример №1

Обычный слайдер с настройками по умолчанию: HTML
================================================
-->
<div class="slider">
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
</div>

$(document).ready(function(){
  $('.slider').bxSlider();
});

<!--
==============================================
Пример №2

Карусель с стандартными настройками :
================================================
-->

<div class="slider">
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
</div>

$(document).ready(function(){
  $('.slider').bxSlider({
  	minSlides: 1,
    maxSlides: 3,
    slideWidth: 258
  });
});
<!--
==============================================
Пример №3

BxSlider с вертикальным переключением слайдов:
================================================
-->
<div class="slider">
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
</div>

$(document).ready(function(){
  $('.slider').bxSlider({
  	mode: 'vertical'
  });
});

<!--
==============================================
Пример №4

Слайдер с адаптивной (резиновой) высотой:
================================================
-->

<div class="slider">
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x450" alt=""></div>
  <div><img src="http://via.placeholder.com/775x250" alt=""></div>
</div>

$(document).ready(function(){
  $('.slider').bxSlider({
  	adaptiveHeight: true
  });
});

<!--
==============================================
Пример №5

Не цикличная карусель со скрытием кнопок навигации в конце
или в начале работы, а также отключены точки(dot, pager):

================================================
-->
<div class="slider">
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/ffffff/000000" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300" alt=""></div>
  <div><img src="http://via.placeholder.com/258x300/000000/ffffff" alt=""></div>
</div>


$(document).ready(function(){
  $('.slider').bxSlider({
  	minSlides: 1,
    maxSlides: 3,
    slideWidth: 258,
  	infiniteLoop: false,
    hideControlOnEnd: true,
    pager: false
  });
});
<!--
==============================================
Пример №6

Слайдер с миниатюрами (thumbnail):
================================================
-->

<div class="slider">
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
  <div><img src="http://via.placeholder.com/775x300" alt=""></div>
</div>
<div class="slider-nav">
  <div>
    <a class="active" data-slide-index="0"><img src="http://via.placeholder.com/150x100" alt=""></a>
  </div>
  <div>
    <a data-slide-index="1"><img src="http://via.placeholder.com/150x100" alt=""></a>
  </div>
  <div>
    <a data-slide-index="2"><img src="http://via.placeholder.com/150x100" alt=""></a>
  </div>
  <div>
    <a data-slide-index="3"><img src="http://via.placeholder.com/150x100" alt=""></a>
  </div>
  <div>
    <a data-slide-index="4"><img src="http://via.placeholder.com/150x100" alt=""></a>
  </div>
</div>

.slider-nav > div {
  float: left;
  border: 3px solid #fff;
}

.slider-nav > div a {
  display: block;
  cursor: pointer;
}

.slider-nav > div a.active {
  border-bottom: 3px solid #000;
}

$(document).ready(function(){
  $('.slider').bxSlider({
  	pagerCustom: '.slider-nav',
  	infiniteLoop: false,
    hideControlOnEnd: true,
  });
});

/*
==================================
PRODUCT-GALLERY
==================================
*/
    $('.gallery-list').bxSlider({
        pagerCustom: '.gallery-pager__list',
        controls: false
    });

<aside class="sidebar__product-view">
  <div class="product-gallery">
    <ul class="gallery-list">
        <li class="gallery-item">
            <img src="i/@2x/goods-5.png"  class="gallery-pic" alt="gallery">
        </li>
        <li class="gallery-item">
            <img src="i/@2x/goods-2.png"  class="gallery-pic" alt="gallery">
        </li>
        <li class="gallery-item">
            <img src="i/@2x/goods-3.png"  class="gallery-pic" alt="gallery">
        </li>
    </ul>
    <div class="product-gallery__pager">
      <ul class="gallery-pager__list">
          <li class="gallery-pager__item">
              <a href="#" class="gallery-pager__link" data-slide-index="0">
                <img src="i/@1x/goods-5.png" alt="">
              </a>
          </li>
          <li class="gallery-pager-item">
              <a href="#" class="gallery-pager__link" data-slide-index="1">
                <img src="i/@1x/goods-2.png" alt="">
              </a>
          </li>
          <li class="gallery-pager-item">
              <a href="#" class="gallery-pager__link" data-slide-index="2">
                <img src="i/@1x/goods-3.png" alt="">
              </a>
          </li>
      </ul>
    </div>
    <!--//product-gallery__pager-->
  </div>
  <!--//product-gallery-->
  </aside>
  <!-- End sidebar__product-view-2 -->
/*
==================================
PRODUCT-GALLERY
==================================
*/
    $('.gallery-list').bxSlider({
        pagerCustom: '.gallery-pager__list',
        controls: false
    });

/*
==================================
PRODUCT-GALLERY
==================================
*/
.product-gallery {
  .bx-wrapper {
    margin-bottom: 40px;
  }

  .bx-viewport {
    left: 0;
    background: none;
    box-shadow: none;
    border: none;
  }
}
.gallery-pic {
  display: block;
  margin: 0 auto;
}

.gallery-pager__list {
  .row-flex();
  .justify-arr();
}
.gallery-pager__item {
  .col();


  img {
    display: block;
    .height(108);
    margin: auto;
  }

}
.gallery-pager__link {
  display: block;
  .width(95);
  .height(124);
  .bgc(@bg_color);
  .center-align();
  .display-container();
  &.active {
    &::before {
      content: "";
      .overlay(absolute, @color, 15%);
    }
  }
}
/*
=========================================
ARRIVALS-SLIDER
=========================================
*/
<article class="arrivals__wrap">
        <h2 class="visually-hidden">Hidden title</h2>

        <section class="arrivals__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="product js_left">
            <div class="product__image">
              <a href="#">
                <img src="i/@2x/goods-1.png" class="product__pic" alt="product">
              </a>
            </div>
            <!-- // product__image -->
            <header class="product__header">
              <h3 class="product__title">
                <a href="#">
                  Reebok Track Jacket
                </a>
              </h3>
            </header>
            <div class="product__price">
              <a href="#">
                100$
              </a>
            </div>
          </div>
          <!-- // product -->
           <div class="product-second">

            <ul class="product-slider__list">
              <li class="slider-item">
                <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                     alt="slider">
              </li>
              <li class="slider-item">
                <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                     alt="slider">
              </li>
              <li class="slider-item">
                <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                     alt="slider">
              </li>
              <li class="slider-item">
                <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                     alt="slider">
              </li>
            </ul>

            <header class="product__header">
              <h3 class="product__title">
                <a href="#">
                  Reebok Track Jacket
                </a>
              </h3>
            </header>
            <div class="product-sizes">
              <span>Sizes:</span>
              <ul class="sizes-list">
                <li class="sizes-item">
                  <a href="#" class="sizes-link">
                    s
                  </a>
                </li>
                <li class="sizes-item">
                  <a href="#" class="sizes-link">
                    m
                  </a>
                </li>
                <li class="sizes-item">
                  <a href="#" class="sizes-link">
                    l
                  </a>
                </li>
                <li class="sizes-item">
                  <a href="#" class="sizes-link">
                    xl
                  </a>
                </li>
              </ul>
            </div>
            <ul class="pager-list">
              <li class="pager-item">
                <a href="#" data-slide-index="0" class="pager-link__red">

                </a>
              </li>
              <li class="pager-item">
                <a href="#" data-slide-index="1" class="pager-link__blue">

                </a>
              </li>
              <li class="pager-item">
                <a href="#" data-slide-index="2" class="pager-link__indigo">

                </a>
              </li>
              <li class="pager-item">
                <a href="#" data-slide-index="3" class="pager-link__green">

                </a>
              </li>
            </ul>
            <footer class="product-buttons">
              <ul class="buttons-list">
                <li class="buttons-item">
                  <a href="#" class="buttons-link__web">

                  </a>
                </li>
                <li class="buttons-item">
                  <a href="#" class="buttons-link__cart">

                  </a>
                </li>
                <li class="buttons-item">
                  <a href="#" class="buttons-link__like">

                  </a>
                </li>
              </ul>
            </footer>
          </div>
          <!-- // product-second -->
        </section>
        <!-- End arrivals__inner-1 -->

        <section class="arrivals__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="product js_left">
            <div class="product__image">
              <a href="#">
                <img src="i/@2x/goods-2.png" class="product__pic" alt="product">
              </a>
            </div>
            <!-- // product__image -->
            <header class="product__header">
              <h3 class="product__title">
                <a href="#">
                  Reebok Track Jacket
                </a>
              </h3>
            </header>
            <div class="product__price">
              <a href="#">
                100$
              </a>
            </div>
          </div>
          <!-- // product -->
           <div class="product-second">

          <div class="product-second">

                      <ul class="product-slider__list">
                        <li class="slider-item">
                          <img src="i/@1x/goods-2.png" srcset="i/@1x/goods-2.png 1x, i/@2x/goods-2.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-2.png" srcset="i/@1x/goods-2.png 1x, i/@2x/goods-2.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-2.png" srcset="i/@1x/goods-2.png 1x, i/@2x/goods-2.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-2.png" srcset="i/@1x/goods-2.png 1x, i/@2x/goods-2.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                      </ul>

                      <header class="product__header">
                        <h3 class="product__title">
                          <a href="#">
                            Reebok Track Jacket
                          </a>
                        </h3>
                      </header>
                      <div class="product-sizes">
                        <span>Sizes:</span>
                        <ul class="sizes-list">
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              s
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              m
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              l
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              xl
                            </a>
                          </li>
                        </ul>
                      </div>
                      <ul class="pager-list">
                        <li class="pager-item">
                          <a href="#" data-slide-index="0" class="pager-link__red">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="1" class="pager-link__blue">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="2" class="pager-link__indigo">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="3" class="pager-link__green">

                          </a>
                        </li>
                      </ul>
                      <footer class="product-buttons">
                        <ul class="buttons-list">
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__web">

                            </a>
                          </li>
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__cart">

                            </a>
                          </li>
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__like">

                            </a>
                          </li>
                        </ul>
                      </footer>
                    </div>
                    <!-- // product-second -->
        </section>
        <!-- End arrivals__inner-2 -->

        <section class="arrivals__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="product js_left">
            <div class="product__image">
              <a href="#">
                <img src="i/@2x/goods-3.png" class="product__pic" alt="product">
              </a>
            </div>
            <!-- // product__image -->
            <header class="product__header">
              <h3 class="product__title">
                <a href="#">
                  Reebok Track Jacket
                </a>
              </h3>
            </header>
            <div class="product__price">
              <a href="#">
                100$
              </a>
            </div>
          </div>
          <!-- // product -->
          <div class="product-second">

                      <ul class="product-slider__list">
                        <li class="slider-item">
                          <img src="i/@1x/goods-3.png" srcset="i/@1x/goods-3.png 1x, i/@2x/goods-3.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-3.png" srcset="i/@1x/goods-3.png 1x, i/@2x/goods-3.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-3.png" srcset="i/@1x/goods-3.png 1x, i/@2x/goods-3.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-3.png" srcset="i/@1x/goods-3.png 1x, i/@2x/goods-3.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                      </ul>

                      <header class="product__header">
                        <h3 class="product__title">
                          <a href="#">
                            Reebok Track Jacket
                          </a>
                        </h3>
                      </header>
                      <div class="product-sizes">
                        <span>Sizes:</span>
                        <ul class="sizes-list">
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              s
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              m
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              l
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              xl
                            </a>
                          </li>
                        </ul>
                      </div>
                      <ul class="pager-list">
                        <li class="pager-item">
                          <a href="#" data-slide-index="0" class="pager-link__red">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="1" class="pager-link__blue">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="2" class="pager-link__indigo">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="3" class="pager-link__green">

                          </a>
                        </li>
                      </ul>
                      <footer class="product-buttons">
                        <ul class="buttons-list">
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__web">

                            </a>
                          </li>
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__cart">

                            </a>
                          </li>
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__like">

                            </a>
                          </li>
                        </ul>
                      </footer>
                    </div>
                    <!-- // product-second -->
        </section>
        <!-- End arrivals__inner-3 -->

        <section class="arrivals__inner">
          <h2 class="visually-hidden">Hidden title</h2>
          <div class="product js_left">
            <div class="product__image">
              <a href="#">
                <img src="i/@2x/goods-1.png" class="product__pic" alt="product">
              </a>
            </div>
            <!-- // product__image -->
            <header class="product__header">
              <h3 class="product__title">
                <a href="#">
                  Reebok Track Jacket
                </a>
              </h3>
            </header>
            <div class="product__price">
              <a href="#">
                100$
              </a>
            </div>
          </div>
          <!-- // product -->

                    <div class="product-second">

                      <ul class="product-slider__list">
                        <li class="slider-item">
                          <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                        <li class="slider-item">
                          <img src="i/@1x/goods-1.png" srcset="i/@1x/goods-1.png 1x, i/@2x/goods-1.png 2x" class="slider-pic"
                               alt="slider">
                        </li>
                      </ul>

                      <header class="product__header">
                        <h3 class="product__title">
                          <a href="#">
                            Reebok Track Jacket
                          </a>
                        </h3>
                      </header>
                      <div class="product-sizes">
                        <span>Sizes:</span>
                        <ul class="sizes-list">
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              s
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              m
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              l
                            </a>
                          </li>
                          <li class="sizes-item">
                            <a href="#" class="sizes-link">
                              xl
                            </a>
                          </li>
                        </ul>
                      </div>
                      <ul class="pager-list">
                        <li class="pager-item">
                          <a href="#" data-slide-index="0" class="pager-link__red">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="1" class="pager-link__blue">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="2" class="pager-link__indigo">

                          </a>
                        </li>
                        <li class="pager-item">
                          <a href="#" data-slide-index="3" class="pager-link__green">

                          </a>
                        </li>
                      </ul>
                      <footer class="product-buttons">
                        <ul class="buttons-list">
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__web">

                            </a>
                          </li>
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__cart">

                            </a>
                          </li>
                          <li class="buttons-item">
                            <a href="#" class="buttons-link__like">

                            </a>
                          </li>
                        </ul>
                      </footer>
                    </div>
          <!-- // product-second -->
        </section>
        <!-- End arrivals__inner-4 -->

      </article>
      <!--//arrivals__wrap-->
    </div>
    <!-- //wrapper -->
    <div class="arrivals-pager">
      <ul class="arrivals-pager__list">
        <li class="arrivals-pager__item">
          <a href="#" data-autohide="0" class="arrivals-pager__link">

          </a>
        </li>
        <li class="arrivals-pager__item">
          <a href="#" data-autohide="1" class="arrivals-pager__link">

          </a>
        </li>
        <li class="arrivals-pager__item">
          <a href="#" data-autohide="2" class="arrivals-pager__link">

          </a>
        </li>
        <li class="arrivals-pager__item">
          <a href="#" data-autohide="2" class="arrivals-pager__link">

          </a>
        </li>
      </ul>
    </div>
    <!-- End arrivals-pager -->
  </section>
  <!-- End arrivals -->
/*
=========================================
ARRIVALS-SLIDER
=========================================
*/

$('#js_arrivals .product-slider__list').bxSlider({
    pagerCustom: '.pager-list',
    controls: false
});


/*
=============================
PRODUCTS
=============================
*/

.arrivals {
  margin-bottom: 80px;
}

.arrivals__wrap {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  margin-left: -15px;
  margin-right: -15px;
  -ms-flex-pack: justify;
      justify-content: space-between;
}

.arrivals__inner {
  position: relative;
  box-sizing: border-box;
  word-wrap: break-word;
  margin-left: 15px;
  margin-right: 15px;
  width: calc(25% - 30px);
  cursor: pointer;
  transition: 1s;
  transition: all 1s ease-out;
  margin-top: 16px;
  margin-top: 1rem;
  margin-bottom: 16px;
  margin-bottom: 1rem;
}

.arrivals__inner:hover .product-second {
  opacity: 1;
}

.product {
  position: relative;
  background-color: #fff;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
      flex-direction: column;
  -ms-flex-pack: center;
      justify-content: center;
  -ms-flex-align: center;
      align-items: center;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  padding: 20px 30px;
  padding: 1.25rem 1.875rem;
  cursor: pointer;
  transition: 0.5s;
  transition: all 0.5s ease-out;
  z-index: 100;
}

.product__image {
  height: 220px;
  height: 13.75rem;
  margin-top: 16px;
  margin-top: 1rem;
  margin-bottom: 16px;
  margin-bottom: 1rem;
  text-align: center;
}

img.product__pic {
  display: inline-block;
  vertical-align: top;
}

.product__header {
  text-align: center;
  margin-top: 16px;
  margin-top: 1rem;
  margin-bottom: 16px;
  margin-bottom: 1rem;
}

h3.product__title {
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 1.125rem;
  color: #34404b;
  text-transform: capitalize;
}

h3.product__title a {
  color: #34404b;
}

.product__price {
  margin-top: 16px;
  margin-top: 1rem;
  margin-bottom: 16px;
  margin-bottom: 1rem;
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 700;
  font-style: normal;
  font-size: 1.125rem;
  color: #ff5912;
}

.product__price a {
  color: #ff5912;
}

.arrivals-pager {
  width: 100%;
  height: 60px;
  height: 3.75rem;
  background-color: #fff;
  margin-top: 64px;
  margin-top: 4rem;
  margin-bottom: 64px;
  margin-bottom: 4rem;
}

ul.arrivals-pager__list {
  text-align: center;
  margin-left: -15px;
  margin-right: -15px;
}

li.arrivals-pager__item {
  display: inline-block;
  vertical-align: top;
}

a.arrivals-pager__link {
  display: block;
  width: 8px;
  width: 0.5rem;
  height: 8px;
  height: 0.5rem;
  border-radius: 4px;
  background-color: #ff5912;
  margin-top: 27px;
}

.product-second {
  box-shadow: 0 5px 15px 0 #34404b;
  text-align: center;
  opacity: 0;
  position: absolute;
  top: 0;
  left: 0px;
  width: 100%;
}

.product-second .bx-wrapper img {
  max-width: 100%;
  display: block;
  margin: 30px auto 0 auto;
}

.product-second .bx-wrapper .bx-viewport {
  box-shadow: none;
  border: none;
  left: 0;
  background: none;
}

.product-second .product__header {
  margin: 0;
}

.product-second h3.product__title {
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 700;
  font-style: normal;
  font-size: 1.125rem;
  color: #ff5912;
}

.product-second h3.product__title a {
  color: #ff5912;
}

.product-sizes {
  margin-top: 16px;
  margin-top: 1rem;
  margin-bottom: 16px;
  margin-bottom: 1rem;
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 0.875rem;
  color: #34404b;
}

.product-sizes span {
  display: inline-block;
  vertical-align: middle;
  margin-right: 15px;
  text-transform: lowercase;
}

ul.sizes-list {
  margin-left: -15px;
  margin-right: -15px;
  display: inline-block;
  vertical-align: middle;
}

li.sizes-item {
  display: inline-block;
  vertical-align: top;
  position: relative;
  transition: 0.5s;
  transition: all 0.5s ease-out;
}

li.sizes-item::after {
  content: "";
  width: 5px;
  width: 0.3125rem;
  height: 1px;
  height: 0.0625rem;
  background-color: #000;
  position: absolute;
  top: 50%;
  right: 0%;
  transform: translate(0%, -50%);
  -ms-transform: translate(0%, -50%);
}

li.sizes-item:last-child::after {
  display: none;
}

li.sizes-item:hover a.sizes-link {
  color: #ff5912;
  text-decoration: none;
}

a.sizes-link {
  display: block;
  padding: 0px 10px;
  padding: 0rem 0.625rem;
  font-family: "OpenSans", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 0.875rem;
  color: #34404b;
  text-transform: lowercase;
}

ul.pager-list {
  padding-top: 16px;
  padding-top: 1rem;
  padding-bottom: 16px;
  padding-bottom: 1rem;
  margin-left: -15px;
  margin-right: -15px;
}

li.pager-item {
  display: inline-block;
  vertical-align: top;
}

li.pager-item a {
  display: block;
  width: 13px;
  width: 0.8125rem;
  height: 13px;
  height: 0.8125rem;
  border-radius: 8px;
}

a.pager-link__red {
  background-color: #e12e3f;
}

a.pager-link__blue {
  background-color: #34404b;
}

a.pager-link__indigo {
  background-color: #3ab3ff;
}

a.pager-link__green {
  background-color: #2fd967;
}


