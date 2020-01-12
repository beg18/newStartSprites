HTML код- разметка:
<a href="#js-login-modal" class="btn btn_login pull-right js-show-modal">login</a>
<!-- Modals -->
<div class="modal js-modal" id="js-login-modal">
    <h2>Modal Title</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore aut officiis eaque itaque repudiandae nemo, ea praesentium ullam tempora nisi numquam harum accusamus nihil, animi iure minus quasi labore doloremque.</p>
    <a href="#" class="btn btn_red js-modal-close">Close</a>
</div>


CSS стили:
.overlay{
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.7);
      position: fixed;
      top: 0;
      left: 0;
      z-index: 999;
}

.modal{
      width: 300px;
      padding: 20px;
      background: #fff;
      text-align: center;
      position: fixed;
      top: 100px;
      left: 50%;
      z-index: 1000;
      display: none;
}

.modal_lg{
      width: 500px;
}
.open-modal{
    overflow-y: hidden;
    padding-right:15px;
}
.modal__head {
    font-family: Impact, Charcoal, sans-serif;
    font-size: 16px;
    font-weight: bold;
    text-transform: uppercase;
    color: #000000;
    text-align: center;
    margin-bottom: 30px;
    letter-spacing: 0.3em;
}

.modal__text {
    margin-bottom: 20px;
}


.btn-mydanger {
    background-color: #800000;
    border-radius: 10px;
    color: #FFFFFF;
    font-weight: bold;
    text-transform: uppercase;
    font-size: 14px;
    text-align: center;
    padding: 5px 15px;
}


JS скрипт:
/* Modals
    ====================================*/

    $(".js-modal").each(function() {
        var modalWidth = $(this).innerWidth() / 2;

        $(this).css({
            "marginLeft": "-" + modalWidth + "px"
        });
    });

    $(".js-show-modal").on("click", function(e) {

        e.preventDefault();

        var currentModal = $(this).attr("href");

        $(currentModal).fadeIn(500);
        $("body").append("<div class='overlay' id='js-overlay'></div>").addClass("open-modal");

    });


    $(".js-modal-close").on("click", function(e) {

        e.preventDefault();
        $(".js-modal").fadeOut(100);
        $("body").removeClass("open-modal");
        $("#js-overlay").remove();

    });


    $("body").on("click", "#js-overlay", function() {
        $(".js-modal").fadeOut(100);
        $("body").removeClass("open-modal");
        $("#js-overlay").remove();
    });
