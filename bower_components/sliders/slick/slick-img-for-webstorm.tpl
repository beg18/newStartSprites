<link rel="stylesheet" href="css/slick.css">
-------------------------------------------------------------------------------------------
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="js/slick.min.js"></script>

<!--========================================HTML==============================================-->
<section class="$block_title$">
    <div class="wrapper">
        <article id="js_$block_title$" class="$block_title$__inners">
            <section class="$block_title$__inner">
            <h2 class="visually-hidden">Hidden title</h2>
                <picture>
                    <source type="image/webp" srcset="i/webp/$block_title$-img1.webp 1x, i/webp/$block_title$-img1@2x.webp 2x">
                    <img class="works-item__image" src="i/$block_title$-img1.jpg" srcset="i/$block_title$-img1.jpg 1x, i/$block_title$-img1@2x.jpg" alt="Слайд первый">
                </picture>
            </section>
            <!-- End $block_title$__inner-1 -->
            <section class="$block_title$__inner">
            <h2 class="visually-hidden">Hidden title</h2>
                <picture>
                    <source type="image/webp" srcset="i/webp/$block_title$-img2.webp 1x, i/webp/$block_title$-img2@2x.webp 2x">
                    <img class="works-item__image" src="i/$block_title$-img2.jpg" srcset="i/$block_title$-img2.jpg 1x, i/$block_title$-img2@2x.jpg" alt="Слайд первый">
                </picture>
            </section>
            <!-- End $block_title$__inner-2 -->
            <section class="$block_title$__inner">
            <h2 class="visually-hidden">Hidden title</h2>
                <picture>
                    <source type="image/webp" srcset="i/webp/$block_title$-img3.webp 1x, i/webp/$block_title$-img3@2x.webp 2x">
                    <img class="works-item__image" src="i/$block_title$-img3.jpg" srcset="i/$block_title$-img3.jpg 1x, i/$block_title$-img3@2x.jpg" alt="Слайд первый">
                </picture>
            </section>
            <!-- End $block_title$__inner-3 -->
        </article>
        <!-- End $block_title$__inners -->
    </div>
    <!-- End wrapper -->
</section>
<!-- End $block_title$ -->


<!--========================================CSS==============================================-->


.$block_title$ {
    padding: 81px 0;
    &__inner {
        position: relative;
        width: 750px;
        margin: 0 auto;
    }
    .slick-prev, .slick-next  {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        left: -66px;
        border: none;
        background-color: #fff;
        img {
            width: 31px;
            height: 50px;
        }
    }
    .slick-next  {
        right: -66px;
        left: auto;
    }
}

<!--========================================JS==============================================-->

$(document).ready(function(){
    $('.$block_title$__inner').slick({
        speed: 1200,
        adaptiveHeight: true,
        prevArrow: '<button type="button" class="slick-prev"><img src="icons/left.svg"></button>',
        nextArrow: '<button type="button" class="slick-next"><img src="icons/right.svg"></button>',
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    dots: true,
                    arrows: false
                }
            }
        ]
    });
});