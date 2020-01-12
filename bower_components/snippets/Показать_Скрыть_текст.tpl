Урок 14. Показать/Скрыть текст
HTML разметка(код):
<!-- Company Blog -->
<div class="container page-block">
    <h2 class="title title_dark text-center">Company Blog</h2>

    <div class="post-list">
        <article class="post">
            <div class="post__left">
                <h3 class="post-title"><a href="#">How does the Internet Create Potential</a></h3>
                <div class="post-info">
                    <time datetime="31.01.2016" pubdate="" class="post-info__item">31 January, 2016</time>
                    <div class="post-info__item">6 comments</div>
                    <div class="post-info__item"><i class="heart-icon"></i>12</div>
                </div>
                <p class="post-text">Etiam tempor vehicula dui, sit amet accumsan
                nisi vehicula ac. Fusce finibus lacus lobortis, imperdiet justo et,
                placerat sapien. Nullam velit turpis, suscipit vitae commodo.
                <span class="hidden js-blog-content">Lorem ipsum dolor sit amet,
                consectetur adipisicing elit. Quod error fugiat cum minima natus molestias,
                harum impedit asperiores, dignissimos, explicabo, sapiente.
                Sequi, veniam dolores. Ipsam earum esse veniam, atque tempora.
                </span> <a href="#" class="link link_red js-read-more">Read More</a></p>
            </div>
            <div class="post__right">
                <a href="#"><img src="i/photo1.jpg" width="220" height="180" class="post-photo" alt=""></a>
            </div>
        </article>

        <article class="post">
            <div class="post__left">
                <h3 class="post-title"><a href="#">How does the Internet Create Potential</a></h3>
                <div class="post-info">
                    <time datetime="31.01.2016" pubdate="" class="post-info__item">31 January, 2016</time>
                    <div class="post-info__item">6 comments</div>
                    <div class="post-info__item"><i class="heart-icon"></i>22</div>
                </div>
                <p class="post-text">Etiam tempor vehicula dui, sit amet accumsan nisi
                vehicula ac. Fusce finibus lacus lobortis, imperdiet justo et, placerat sapien.
                Nullam velit turpis, suscipit vitae commodo.<span class="hidden js-blog-content">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod error
                fugiat cum minima natus molestias, harum impedit asperiores, dignissimos,
                explicabo, sapiente. Sequi, veniam dolores. Ipsam earum esse veniam,
                atque tempora.</span> <a href="#" class="link link_red js-read-more">Read More</a></p>
            </div>
            <div class="post__right">
                <a href="#"><img src="i/photo2.jpg" width="220" height="180" class="post-photo" alt=""></a>
            </div>
        </article>

        <article class="post">
            <div class="post__left">
                <h3 class="post-title"><a href="#">How does the Internet Create Potential</a></h3>
                <div class="post-info">
                    <time datetime="31.01.2016" pubdate="" class="post-info__item">31 January, 2016</time>
                    <div class="post-info__item">6 comments</div>
                    <div class="post-info__item"><i class="heart-icon"></i>41</div>
                </div>
                <p class="post-text">Etiam tempor vehicula dui, sit amet accumsan nisi vehicula ac.
                Fusce finibus lacus lobortis, imperdiet justo et, placerat sapien. Nullam
                velit turpis, suscipit vitae commodo... <a href="#" class="link link_red">Read More</a></p>
            </div>
            <div class="post__right">
                <a href="#"><img src="i/photo3.jpg" width="220" height="180" class="post-photo" alt=""></a>
            </div>
        </article>
    </div><!-- /.post-list -->

    <div class="text-center">
        <a href="#" class="btn btn_blue">show more</a>
    </div>

</div><!-- /.container -->

СSS стили:
.post-list{
      margin-bottom: 40px;
}

.post{
      width: 820px;
      margin: 0 auto;
      padding: 20px 0;
      border-bottom: 1px solid #dedede;
}

.post:before,.post:after{
      content: "";
      display: table;
      width: 100%;
}

.post:after{
      clear: both;
}

.post:last-of-type{
      border-bottom: 0;
}

.post__left,.post__right{
      float: left;
}

.post__left{
      width: 580px;
      padding-left: 60px;
}

.post__right{
      width: 240px;
      padding-right: 20px;
}

.post-title{
      color: #000;
      font: normal 18px 'Roboto', sans-serif;
      margin-bottom: 10px;
}

.post-title a{
      color: #000;
      text-decoration: none;
}

.post-title a:hover{
      text-decoration: underline;
}

.post-info{
      font-size: 12px;
      margin-bottom: 10px;
}

.post-info__item{
      display: inline-block;
      margin-right: 20px;
}

.post-text{
      font-size: 14px;
      line-height: 20px;
}

.post-photo{
      width: 220px;
      height: 180px;
      display: block;
}
.link{
      color: #fff;
      text-decoration: underline;
}

.link_red{
      color: #e84c3d;
}

.link:hover{
      text-decoration: none;
}
.btn{
      -webkit-transition: all .3s;
      -moz-transition: all .3s;
      transition: all .3s;
      display: inline-block;
      background: none;
      border: 0;
      text-decoration: none;
      text-transform: uppercase;
      line-height: 1.1;
}

.btn_login{
      font-size: 12px;
      color: #fff;
      border: 1px solid #e84c3d;
      padding: 12px 30px;
}

.btn_login:hover{
      background: #e84c3d;
}

.btn_intro{
      margin-bottom: 30px;
}

.btn_search{
      width: 20%;
}

.btn_red{
      width: 220px;
      padding: 16px;
      background: #e84c3d;
      color: #fff;
      font-size: 14px;
      font-weight: bold;
}

.btn_red:hover{
      background: #e12c1b;
}

.btn_blue{
      width: 220px;
      padding: 16px;
      background: #2c3039;
      color: #fff;
      font-size: 14px;
      font-weight: bold;
}

.btn_blue:hover{
      background: #3e4350;
}

.btn_sm{
      width: auto;
}

.btn_full{
      width: 100%;
}

.btn_subscribe{
      width: 80px;
      float: left;
      padding-top: 13px;
      padding-bottom: 13px;
}

.btn:focus{
      outline: none;
}

.btn:hover{
      cursor: pointer;
}

JS скрипт:
/* Company Blog text toggle
    ========================*/

    $(".js-read-more").on("click", function(e) {

        e.preventDefault();

        var $this = $(this),
            text = $this.text();

        if( text == "Read More" ) {
            $this.text("Hide");
        } else {
            $this.text("Read More");
        }

        $(this).prev(".js-blog-content").toggleClass("hidden");

    });

