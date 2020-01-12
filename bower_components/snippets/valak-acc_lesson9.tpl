    <div class="faq">

        <div class="faq__item">
            <a href="#question-1" class="faq-title js-faq-title">Question 1</a>
            <div class="faq-content js-faq-content" id="question-1">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt blanditiis quam ullam distinctio aliquid, ad aspernatur temporibus quis labore, est quidem voluptatum. Asperiores similique totam veritatis inventore velit distinctio, ullam!</p>
            </div>
        </div>

        <div class="faq__item">
            <a href="#question-2" class="faq-title js-faq-title">Question 2</a>
            <div class="faq-content js-faq-content" id="question-2">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt blanditiis quam ullam distinctio aliquid, ad aspernatur temporibus quis labore, est quidem voluptatum. Asperiores similique totam veritatis inventore velit distinctio, ullam!</p>
            </div>
        </div>

        <div class="faq__item">
            <a href="#question-3" class="faq-title js-faq-title">Question 3</a>
            <div class="faq-content js-faq-content" id="question-3">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt blanditiis quam ullam distinctio aliquid, ad aspernatur temporibus quis labore, est quidem voluptatum. Asperiores similique totam veritatis inventore velit distinctio, ullam!</p>
            </div>
        </div>

    </div><!-- /.faq -->





.faq{
  width: 600px;
  margin: 30px auto;
}

.faq-content{
  padding: 5px 10px;
  font-size: 14px;
  display: none;
}

.faq-title{
  -webkit-transition: background-color .2s;
  -moz-transition: background-color .2s;
  transition: background-color .2s;
  display: block;
  padding: 5px 10px;
  color: #000;
  text-decoration: none;
  background-color: #eaeaea;
  border-bottom: 1px solid #d1d1d1;
}

.faq-title:hover{
  background-color: #ddd;
}


 /* FAQ
    ========================*/

    /*$(".js-faq-title").on("click", function(e) {

        e.preventDefault();
        var $this = $(this);

        if( !$this.hasClass("active") ) {
            $(".js-faq-content").slideUp();
            $(".js-faq-title").removeClass("active");
        }

        $this.toggleClass("active");
        $this.next().slideToggle();

    });*/


    $(".js-faq-title").on("click", function(e) {

        e.preventDefault();
        var $this = $(this),
            answerId = $this.attr("href");

        if( !$this.hasClass("active") ) {
            $(".js-faq-content").slideUp();
            $(".js-faq-title").removeClass("active");
        }

        $this.toggleClass("active");
        $(answerId).slideToggle();

    });
