$
********************************************
$(function(){
    $name$
});

$-class
*******************************************
$('.$Name$')

$-id
*******************************************
$('#$Name$')

$-teg
******************************************
$('$Name$')

.eq
******************************************
$('$name$').eq();

.eq-class
******************************************
$('.$name$').eq(INDEX);

.eq-id
******************************************
$('#$name$').eq(номер);

acc
******************************************
 $("#accordion").accordion({
     /*heightStyle: "fill"*/
     heightStyle: "content",
     collapsible: true
});

anim
******************************************
$('$SELECTOR$').animate({properties},[duration], [easing], [callback]);

anim-class
*******************************************************
$('.$SELECTOR$').animate({properties},[duration], [easing], [callback]);


anim-id
*********************************************************
$('#$SELECTOR$').animate({properties},[duration], [easing], [callback]);


class-anim
**********************************************************
$('.$selector$').animate({},time, easy);

click-class
*********************************************************
$('.$selector$').click(function(){});

click-id
********************************************************
$('#$selector$').click(function(){});

ef-class
********************************************************
$('.$selector$').[EFFECT](time, function(){});

ef-id
*********************************************************
$('#$selector$').[EFFECT](time, function(){});

get-attr
********************************************************
$($SELECTOR$).attr(имя атрибута);

get-attr-class
********************************************************
$('.$SELECTOR$').attr(имя атрибута);

get-attr-id
********************************************************
$('#$SELECTOR$').attr(имя атрибута);

get-id
********************************************************
var get = function (id){
    return document.getElementById(id);
}

id-anim
********************************************************
$('#$selector$').animate({},time, easy);

itar
********************************************************
for (var $INDEX$ = 0; $INDEX$ < $ARRAY$.length; $INDEX$++) {
  var $VAR$ = $ARRAY$[$INDEX$];
  $END$
}

iter
*******************************************************
for (let $VAR$ of $ARRAY$) {
  $END$
}

itin
******************************************************
for (var $VAR$ in $ARRAY$) {
  $END$
}

modal-jq
*****************************************************
$('.js_modal').each(function() {
    var modalWidth = $(this).innerWidth()/2;
    $(this).css({
        'marginLeft' : '-' + modalWidth + 'px'
    });
});

$('.js_show-modal').on('click', function(e){
    e.preventDefault();
    var currentModal = $(this).attr('data-href');
    /*var currentModal = $(this).attr('href');*/
    $(currentModal).fadeIn(500);
    $('body')
        .append('<div class="overlay" id="js_overlay"></div>')
        .addClass('stop-scroll');
  });

$('.js-modal-close').on('click', function(e){
    e.preventDefault();

    $('.js_modal').fadeOut(100);
    $('body').removeClass('stop-scroll');
    $('#js_overlay').remove();
});

 $('body').on('click', '#js_overlay' , function(){
    $('.js_modal').fadeOut(100);
    $('body').removeClass('stop-scroll');
    $('#js_overlay').remove();
});


navad
*************************************************************
$('.menuToggle').on('click' , function (event) {
    event.preventDefault();
    $('.navigation__menu').slideToggle(300, function () {
        if ($(this).css('display') ==='none'){
            $(this).removeAttr('style');
        }
    });
});

query
**************************************************************
var query = function(selector) {
   return document.querySelector(selector);
}

queryAll
***************************************************************
var queryAll = function(string) {
   return document.querySelectorAll(string);
}

attr
**************************************************************
$('$SELECTOR$').attr(имя атрибута, новое значение);

attr-id
**************************************************************
$('#$SELECTOR$').attr(имя атрибута, новое значение);

set-attr
**************************************************************
$('$SELECTOR$').attr({
    первый_атрибут: 'новое_значение',
    второй_атрибут: 'новое_значение'
});

set-attr-class
**************************************************************
$('.$SELECTOR$').attr({
    первый_атрибут: 'новое_значение',
    второй_атрибут: 'новое_значение'
});

set-attr-id
*************************************************************
$('#$SELECTOR$').attr({
    первый_атрибут: 'новое_значение',
    второй_атрибут: 'новое_значение'
});


replaceAll
*************************************************************
$Name$.replaceAll(что заменить);

replaceWith
************************************************************
$('$Name$').replaceWith(чем заменить);

ritar
***********************************************************
for (var $INDEX$ = $ARRAY$.length - 1; $INDEX$ >= 0; $INDEX$--) {
  var $VAR$ = $ARRAY$[$INDEX$];
  $END$
}

slide-M
**********************************************************
/* Begin $varName$ */
    var slideIndex = 1,
        $varName$_prev = document.querySelector('.$varName$__prev'),
        $varName$_next = document.querySelector('.$varName$__next');

$varName$_prev.addEventListener('click', plusDivs(-1));
$varName$_next.addEventListener('click', plusDivs(-1));
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var $varName$_img = document.getElementsByClassName("$varName$__img");
  if (n > $varName$_img.length) {slideIndex = 1}
  if (n < 1) {slideIndex = $varName$_img.length}
  for (i = 0; i < $varName$_img.length; i++) {
     $varName$_img[i].style.display = "none";
  }
  $varName$_img[slideIndex-1].style.display = "block";
}
/* END $varName$ */

tab-pit
*************************************************************
$('.nav-tab-list__link').click(function (e) {
    e.preventDefault();

    $(this)
        .parents('.tab-wrap')
        .find('.tab-cont')
        .addClass('tab-cont-hide');
    $(this)
        .parent()
        .siblings()
        .removeClass('item-active');
    var id = $(this).attr('href');
    $(id).removeClass('tab-cont-hide');
    $(this)
        .parent()
        .addClass('item-active');
    return false;
});

tab-data
****************************************************************

var tab = $('.tabs__link');
tab.on('click',function (e) {
   e.preventDefault();
   $('.content').removeClass('content-active');
   $('.content[data-tab=' + $(this).attr('data-tab') + ']')
       .toggleClass('content-active');
});

us
***************************************************************
"use strict";
$END$

w
****************************************************************
window.onload = function (){};
btn-pop
****************************************************************
$("a[href='#callback']").click(function() {
    var dataForm = $(this).data("form");
    var dataText = $(this).data("text");
    $(".form-callback h4").text(dataText);
    $(".form-callback [name=admin-data]").val(dataForm);
  });
































































