calc-%
*****************************************************************
.parent {
  width: 90%;
  margin: 0 auto;
  }
.child {
  float: left;
  width: calc(100% / $N$ - M % * ($N$ - 1) / $N$); /*Q-кол-во блоков; М-размер отступа; */
  margin-right: M%; /* отступ- margin в  % */
  margin-bottom: M%; /* отступ- margin в  % */
  box-sizing: border-box;
}

.child:nth-child($N$n) {
  margin-right: 0;
}

calc-px
***********************************************************
.parent {
  width: 90%;
  margin: 0 auto;
  }
.child {
  float: left;
  width: calc(100% / $N$ - Mpx * ($N$ - 1) / $N$); /*Q-кол-во блоков; М-размер отступа; */
  margin-right: Mpx; /* отступ- margin в  px */
  margin-bottom: Mpx; /* отступ- margin в  px */
  box-sizing: border-box;
}

.child:nth-child($N$n) {
  margin-right: 0;
}

clearfix
********************************************************
.clearfix::before,
.clearfix::after {
  content: " ";
  display: table;
}
.clearfix::after {
  clear: both;
}

navad
*******************************************************
.navigation {
  .min-height (100);
  background-color: #00ff00;
  color: #ffffff;
  position: relative;
  .col();
  .size(7);
  .roboto(700);
}

.navigation__menu {
  .clearfix();
  .padding-32();

 .sm-block({
   display: none;
   position: absolute;
   width: 100%;
   top: 62px;
 });

  .xs-block({
    display: none;
    position: absolute;
    width: 100%;
    top: 56px;
  });

  .xxs-block({
    display: none;
    position: absolute;
    width: 100%;
    top: 58px;
  });
}

.navigation__item {
  float: left;

  .sm-block({
    float: none;
    background-color: darkgreen;
    border-bottom: 1px solid lightgreen;
  });

  .xs-block({
    float: none;
    background-color: darkgreen;
    border-bottom: 1px solid lightgreen;
  });

  .xxs-block({
    float: none;
   background-color: darkgreen;
    border-bottom: 1px solid lightgreen;
  });
}
.menuToggle,
.navigation__link {
  .button();
  .rem-size(16);
  text-transform: uppercase;
  text-decoration: none;
}

.menuToggle {
  .padding-32();
  display: none;

  .sm-block({
    .dib-mid ();
  });

  .xs-block({
    .dib-mid ();
  });

  .xxs-block({
    .dib-mid ();
  });
}

tab-data
**************************************************************
.content {
  .padding-X(20);
  .padding-Y(30);
  overflow-y: hidden;
  height: 0;

  p {
    .rem-size-mb(16);
    .c(light, #000);
    .line-height-rem(20);
  }
}

.content-active {
  height: auto;
}

tab-pit
**************************************************************

.tab-cont-hide {
  position: absolute;
  left: 0;
  top: 0;
  height: 0;
  width: 0;
  overflow: hidden;
  opacity: 0;
  z-index: -1;
}

.tab-cont {
  opacity: 1;
  transition: opacity 0.45s;
}

.tab-cont.tab-cont-hide {
  opacity: 0;
}

btn-pop
**************************************************************************

.hidden {
    .hide(none);
}


.social-form{
    padding: 32px 26px;
    background-color: #343f49;
}

.social-form .social-form__btn{
    margin-top: 25px;
}

.social-form-head h4{
    font-size: 1.125em;
    margin-top: 0;
    margin-bottom: 10px;
}

.social-form-head p{
    color: #fff;
    opacity: .6;
    font-size: .875em;
    margin-top: 0;
}

.form-callback{
    -webkit-transition: all .3s ease;
    transition: all .3s ease;
    max-width: 320px;
    margin: auto;
    -webkit-box-shadow: rgba(0, 0, 0, .2) 0 0 20px;
    box-shadow: rgba(0, 0, 0, .2) 0 0 20px;
    position: relative;
    overflow: hidden;
}

.form-callback .contact-form-head h4{
    color: #fff;
}

.form-callback .mfp-close{
    color: #fff;
    opacity: .3;
    -webkit-transition: all .25s ease;
    transition: all .25s ease;
}

.form-callback .mfp-close:hover{
    opacity: .6;
}
form label{
    margin-bottom: 14px;
    display: block;
}

form label .selectize-dropdown{
    border: none;
}

form label .selectize-dropdown .active{
    background-color: #414E5B;
    color: #fff;
}

form label .selectize-dropdown .option{
    padding: 8px 15px;
}

form label .selectize-input, form label .selectize-input.full{
    padding: 11px 15px;
}

form label .selectize-input, form label .selectize-input.full, form label input, form label select{
    background-color: rgba(255, 255, 255, .6);
    -webkit-border-radius: 2px;
    border-radius: 2px;
    border: none;
    padding: 9px 15px 7px;
    display: block;
    width: 100%;
    color: #222;
    font-size: .9375em;
    border-bottom: transparent 4px solid;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
}

form label .selectize-input.full:focus,
form label .selectize-input:focus,
form label input:focus, form label select:focus{
    background-color: #fff;
    border-bottom: #546576 4px solid;
}

form label span{
    font-size: 14px;
    color: #fff;
    opacity: .3;
    display: block;
    margin-bottom: 3px;
}

img.mfp-img{
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding: 40px 0;
    margin: 0 auto;
}


















































