//https://webgrind.ru/nastroyka-vsplyvayushhikh-okon-magnific-popup-s-prime/

css/magnific-popup
css/style.css

@import url("https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic-ext");

* {
  margin: 0px;
  padding: 0px;
}

p {
  margin: 0;
}

a {
  text-decoration: none;
  color: inherit;
}

a:hover {
  color: #1b9ae1;
  text-decoration: none;
}

a:focus, a:active {
  outline: none;
}

.btn:focus, .btn:active {
  outline: none;
}

body {
  min-width: 320px;
  position: relative;
  line-height: 1.75;
  font-family: Roboto;
  background-color: #fafafa;
  color: #000;
  opacity: 1;
  width: 100%;
}

.white-popup {
  position: relative;
  background: #FFF;
  padding: 25px;
  max-width: 400px;
  margin: 0 auto;
}

.white-popup img {
  max-width: 100%;
}

/* Зум */

.mfp-zoom-in .mfp-with-anim {
  opacity: 0;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  -webkit-transform: scale(0.8);
  -ms-transform: scale(0.8);
  transform: scale(0.8);
}

.mfp-zoom-in.mfp-bg {
  opacity: 0;
  -webkit-transition: all 0.3s ease-out;
  -o-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}

.mfp-zoom-in.mfp-ready .mfp-with-anim {
  opacity: 1;
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}

.mfp-zoom-in.mfp-ready.mfp-bg {
  opacity: 0.8;
}

.mfp-zoom-in.mfp-removing .mfp-with-anim {
  -webkit-transform: scale(0.8);
  -ms-transform: scale(0.8);
  transform: scale(0.8);
  opacity: 0;
}

.mfp-zoom-in.mfp-removing.mfp-bg {
  opacity: 0;
}

/* Газета */

.mfp-newspaper .mfp-with-anim {
  opacity: 0;
  -webkit-transition: all 0.2s ease-in-out;
  -webkit-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
  -webkit-transform: scale(0) rotate(500deg);
  -ms-transform: scale(0) rotate(500deg);
  transform: scale(0) rotate(500deg);
}

.mfp-newspaper.mfp-bg {
  opacity: 0;
  -webkit-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.mfp-newspaper.mfp-ready .mfp-with-anim {
  opacity: 1;
  -webkit-transform: scale(1) rotate(0deg);
  -ms-transform: scale(1) rotate(0deg);
  transform: scale(1) rotate(0deg);
}

.mfp-newspaper.mfp-ready.mfp-bg {
  opacity: 0.8;
}

.mfp-newspaper.mfp-removing .mfp-with-anim {
  -webkit-transform: scale(0) rotate(500deg);
  -ms-transform: scale(0) rotate(500deg);
  transform: scale(0) rotate(500deg);
  opacity: 0;
}

.mfp-newspaper.mfp-removing.mfp-bg {
  opacity: 0;
}

/* Слева направо */

.mfp-move-horizontal .mfp-with-anim {
  opacity: 0;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
  -webkit-transform: translateX(-50px);
  -ms-transform: translateX(-50px);
  transform: translateX(-50px);
}

.mfp-move-horizontal.mfp-bg {
  opacity: 0;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.mfp-move-horizontal.mfp-ready .mfp-with-anim {
  opacity: 1;
  -webkit-transform: translateX(0);
  -ms-transform: translateX(0);
  transform: translateX(0);
}

.mfp-move-horizontal.mfp-ready.mfp-bg {
  opacity: 0.8;
}

.mfp-move-horizontal.mfp-removing .mfp-with-anim {
  -webkit-transform: translateX(50px);
  -ms-transform: translateX(50px);
  transform: translateX(50px);
  opacity: 0;
}

.mfp-move-horizontal.mfp-removing.mfp-bg {
  opacity: 0;
}

/* Сверху */

.mfp-move-from-top .mfp-content {
  vertical-align: top;
}

.mfp-move-from-top .mfp-with-anim {
  opacity: 0;
  -webkit-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
  -webkit-transform: translateY(-100px);
  -ms-transform: translateY(-100px);
  transform: translateY(-100px);
}

.mfp-move-from-top.mfp-bg {
  opacity: 0;
  -webkit-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
}

.mfp-move-from-top.mfp-ready .mfp-with-anim {
  opacity: 1;
  -webkit-transform: translateY(0);
  -ms-transform: translateY(0);
  transform: translateY(0);
}

.mfp-move-from-top.mfp-ready.mfp-bg {
  opacity: 0.8;
}

.mfp-move-from-top.mfp-removing .mfp-with-anim {
  -webkit-transform: translateY(-50px);
  -ms-transform: translateY(-50px);
  transform: translateY(-50px);
  opacity: 0;
}

.mfp-move-from-top.mfp-removing .mfp-bg {
  opacity: 0;
}

/* 3d разворот */

.mfp-3d-unfold .mfp-content {
  -webkit-perspective: 2000px;
  perspective: 2000px;
}

.mfp-3d-unfold .mfp-with-anim {
  opacity: 0;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  -webkit-transform: rotateY(-60deg);
  transform: rotateY(-60deg);
}

.mfp-3d-unfold.mfp-bg {
  opacity: 0;
  -webkit-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.mfp-3d-unfold.mfp-ready .mfp-with-anim {
  opacity: 1;
  -webkit-transform: rotateY(0deg);
  transform: rotateY(0deg);
}

.mfp-3d-unfold.mfp-ready.mfp-bg {
  opacity: 0.8;
}

.mfp-3d-unfold.mfp-removing .mfp-with-anim {
  -webkit-transform: rotateY(60deg);
  transform: rotateY(60deg);
  opacity: 0;
}

.mfp-3d-unfold.mfp-removing.mfp-bg {
  opacity: 0;
}

/* Отдаление */

.mfp-zoom-out .mfp-with-anim {
  opacity: 0;
  -webkit-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
  -webkit-transform: scale(1.3);
  -ms-transform: scale(1.3);
  transform: scale(1.3);
}

.mfp-zoom-out.mfp-bg {
  opacity: 0;
  -webkit-transition: all 0.3s ease-out;
  -o-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}

.mfp-zoom-out.mfp-ready .mfp-with-anim {
  opacity: 1;
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}

.mfp-zoom-out.mfp-ready.mfp-bg {
  opacity: 0.8;
}

.mfp-zoom-out.mfp-removing .mfp-with-anim {
  -webkit-transform: scale(1.3);
  -ms-transform: scale(1.3);
  transform: scale(1.3);
  opacity: 0;
}

.mfp-zoom-out.mfp-removing.mfp-bg {
  opacity: 0;
}

