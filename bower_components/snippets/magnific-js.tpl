//https://webgrind.ru/nastroyka-vsplyvayushhikh-okon-magnific-popup-s-prime/
js/jquery-3.2.1.min.js
js/jquery.magnific-popup.min.js
js/common.js

$(function(){


    $('.show-popup').magnificPopup({
        type: 'inline',
        removalDelay: 500, //delay removal by X to allow out-animation
        callbacks: {
            beforeOpen: function () {
                this.st.mainClass = this.st.el.attr('data-effect');
            }
        },
        midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
    });


});   