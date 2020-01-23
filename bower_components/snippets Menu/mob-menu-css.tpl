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
