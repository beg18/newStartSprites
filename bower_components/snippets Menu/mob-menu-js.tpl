$('.nav-mobile').click(function(){
  $(this).toggleClass(' active');
  $('.main-nav__list').toggleClass(' mobile-show');
});

/*
=============================================
второй вариант
=============================================
*/
$('.sandwich').click(function(){
  var menu = $('.header-nav__list');
  $(this).toggleClass(' active');

  if(menu.is(':visible')) {
    menu.slideUp();
  } else {
     menu.slideDown();
  }
});