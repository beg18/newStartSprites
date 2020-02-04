.works {
    overflow: hidden;
    padding-top: 70px;
    padding-bottom: 100px;
}

.works_wrap {
  .row-float();
  .display-container();
  .margin-32();
  //background-color: rgba(0, 0, 0, 0.5);
  padding-top: 30px;
  padding-bottom: 30px;

}
.main-nav {
  .dib-mid();
}

.main-nav__list {
    .md-block ({
      //display: none;
      position: absolute;
      top: 94px;
      right: -900px;
      width: 100%;
      max-width: 320px;
      padding: 45px 0 45px 30px;
     background-color: rgba(0, 0, 0, 0.5);
      transition: all linear .5s;
    });

    li {
      .dib-mid();
      margin-right: 50px;

      .md-block ({
          margin-right: 30px;
          display: block;
          margin-bottom: 40px;

          &:last-child {
            margin-bottom: 0;
          }

      });

      .sm-block ({
          margin-right: 15px;
      });

    }

   a {
     text-decoration: none;
     color: #222222;

     .md-block({

     });
   }

}
.main-nav__list {
  .md-block({
    &.mobile-show {
      position: absolute;
      right: 0;
      transition: all linear .5s;
      z-index: 20;
    }
  });

}

.nav-mobile {
    display: none;
    position: absolute;
    right: -1%;
    top:0;
    bottom:0;
    width: 70px;
    background-color: rgba(0, 0, 0, 0.5);
    transition: all linear .5s;
    z-index: 20;

    .md-block({
      display: block !important;
  });

  &.active {

  .md-block({
      display: block;
  });
    background-color: rgba(0, 0, 0, 0.5);
    transition: all linear .5s;

      .nav-mobile__line--top {
        top: 50%;
        opacity: 1;
        transform: rotate(45deg) translateY(-50%);
        transition: all linear .5s;
      }

      .nav-mobile__line--middle {
        opacity: 0;
        transition: all linear .5s;
      }

      .nav-mobile__line--bottom {
        top: 50%;
        transform: rotate(-45deg) translateY(-50%);
        transition: all linear .5s;
      }
}

}


.nav-mobile__line {
   display: block;
   width: 30px;
   height: 2px;
   background-color: #FFFFFF;
   position: absolute;
   left: 20px;
}
.nav-mobile__line--top {
  top: 38px;
  opacity: 1;
  transition: all linear .5s;
}

.nav-mobile__line--middle {
  top: 48px;
  transition: all linear .5s;
}

.nav-mobile__line--bottom {
  top: 58px;
  transition: all linear .5s;
}

.logo {
  a {
  font-size: 24px;
  font-family: OpenSans;
  font-weight: 700;
  color: #222222;
  text-transform: uppercase;
  display: block;
  margin-left: 15px;
  }


}


/*
=============================================
второй вариант
=============================================
*/
.header {
  height: 70px;
  background-color: #007558;
  .padding-Y(10);
  .bg-img("header_bg.jpg");
  .display-container();
}

.header__wrap {
  .row-flex();
  .justify-bet();
}

.header-nav {
  .col();
}

.sandwich {
  .dib-mid();
  width: 50px;
  height: 50px;
  .border(2, white);
  .round(25);
  .display-container();
  cursor: pointer;
  margin-right: 15px;

  span {
    display: block;
  }

   &.active {
     .sandwich-line {
       left: 25%;
     }
    .sandwich-line--top {
      top: 21px;
      transform: rotate(45deg);
      transition: all linear .5s;
    }

    .sandwich-line--middle {
      opacity: 0;
    }

  .sandwich-line--bottom {
      top: 21px;
       transform: rotate(-45deg);
      transition: all linear .5s;
    }
  }
}
.sandwich-menu {
  .ff-pt-sans();
  .rem-size(18);
  color: white;
  .dib-mid();
}
.sandwich-line {
  width: 25px;
  height: 3px;
  background-color: #fff;
  .display-middle();
}

.sandwich-line--top {
  top: 14px;
}

.sandwich-line--middle {
  top: 22px;
  opacity: 1;
}

.sandwich-line--bottom {
  top: 30px;
}

.header-nav__list {
  position: absolute;
  left: 60px;
  top: 80px;
  z-index: 1;
  display: none;
}

.header-nav__link {
  text-decoration: none;
  display: block;
  padding:15px 15px 15px 20px;
  color: @main_color;
  background-color: #FFFFFF;
  border-bottom: 1px solid @main_color;
  transition: all linear .5s;
  &.active,
  &:hover {
      background-color: @main_color;
       color: #FFF;
  }
}


.header-about {
  .col();
  color: rgb(255, 255, 255);
  h4{
      text-transform: uppercase;
      .rem-size(18);
      .ff-pt-sans(700);
  }
  p{
    .ff-pt-sans();
    .rem-size(18);
  }
}

.header-logo {
  .col();
  position: relative;
  top: -10px;
}

.header-phone {
  .col();
  padding-left: 35px;
  .display-container();
  .ff-pt-sans(700);
  color: white;
  .rem-size(20);

  &::before {
    content: "";
    display: block;
    .sprite(@s-phon-icon);
    position: absolute;
    top: 24px;
    left: 0;
    transform: translateY(-50%);
  }
  a {
    text-decoration: none;
    display: block;
    .ff-pt-sans(700);
    color: white;
    .rem-size(20);
  }
}

.h-btn {
  .col();
  .button(30, 15, transparent, white,{
  .border(1, white);
  .round-xlarge();
  .ff-pt-sans();
  .rem-size(18);
  .line-height-rem(25);
  });
  margin-top: 10px;
  transition: all linear .3s;

  &:hover {
    background-color: #fff;
    color: @main_color;
  }
}



