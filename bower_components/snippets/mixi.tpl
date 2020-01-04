<!--<script src="libs/mixitup/mixitup.min.js"></script>-->

<div class="filter_div controls">
<ul>
  <li class="filter active" data-filter="all">Все работы</li>
  <li class="filter" data-filter=".category-1">Сайты</li>
  <li class="filter" data-filter=".category-2">Айдентика</li>
  <li class="filter" data-filter=".category-3">Логотипы</li>
</ul>
</div>
<!-- End filter_div controls -->
<div id="portfolio_grid" class="portfolio_wrap">
    <div class="mix portfolio_item category-1">
    </div>
    <!-- End portfolio_item-1 -->
    <div class="mix portfolio_item category-1">
    </div>
    <!-- End portfolio_item-2 -->
    <div class="mix portfolio_item category-1">
    </div>
    <!-- End portfolio_item-3 -->
    <div class="mix portfolio_item category-2">
    </div>
    <!-- End portfolio_item-4 -->
    <div class="mix portfolio_item category-2">
    </div>
    <!-- End portfolio_item-5 -->
    <div class="mix portfolio_item category-3">
    </div>
    <!-- End portfolio_item-6 -->
    <div class="mix portfolio_item category-3">
    </div>
    <!-- End portfolio_item-7 -->
    <div class="mix portfolio_item category-3">
    </div>
    <!-- End portfolio_item-8 -->
</div>
<!-- End portfolio_wrap -->
<!-- CSS -->

/*
 ============================================
 PORTFOLIO
 ============================================
 */

.filter_div {
  padding-top: 30px;
  padding-top: 1.875rem;
  padding-bottom: 30px;
  padding-bottom: 1.875rem;
  margin-top: 32px;
  margin-top: 2rem;
  margin-bottom: 32px;
  margin-bottom: 2rem;
}

.filter_div ul {
  margin-left: -15px;
  margin-right: -15px;
  text-align: center;
}

.filter_div li {
  box-sizing: border-box;
  word-wrap: break-word;
  margin-left: 15px;
  margin-right: 15px;
  display: inline-block;
  vertical-align: top;
  font-size: 0.75rem;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  letter-spacing: 1.44px;
  letter-spacing: 0.09rem;
  text-transform: uppercase;
  color: #888;
  line-height: 24px;
  line-height: 1.5rem;
  cursor: pointer;
}

.filter_div li.active {
  color: #fff;
  line-height: 24px;
  line-height: 1.5rem;
  border-bottom: 1px solid #ff6347;
}

.portfolio_wrap {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  margin-left: -15px;
  margin-right: -15px;
  -ms-flex-pack: center;
      justify-content: center;
}

.portfolio_item {
  width: calc(25% - 30px);
  position: relative;
  transition: 1s;
  transition: all 1s ease-out;
  cursor: pointer;
  display: none; // обязательно
}

.portfolio_item img {
  display: block;
  max-width: 100%;
  max-height: 100%;
}

.portfolio_item:hover .port_item_cont {
  opacity: 1; // обязательно
}

.port_item_cont {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.85);
  z-index: 2;
  opacity: 0;// обязательно
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
      flex-direction: column;
  -ms-flex-pack: center;
      justify-content: center;
  -ms-flex-align: center;
      align-items: center;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
}

.port_item_cont h3 {
  margin-bottom: 16px;
  font-size: 12px;
  font-size: 0.75rem;
  line-height: 130%;
  margin: 0;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  text-transform: uppercase;
  font-family: "Raleway", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  letter-spacing: 1.44px;
  letter-spacing: 0.09rem;
}

.port_item_cont p {
  font-family: "Raleway", Arial, Helvetica, sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 0.75rem;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  line-height: 18px;
  line-height: 1.125rem;
  color: #888;
  letter-spacing: 1.44px;
  letter-spacing: 0.09rem;
}

.popup_content {
  border: none;
  text-decoration: none;
  overflow: hidden;
  outline: none !important;
  display: inline-block;
  vertical-align: middle;
  white-space: nowrap;
  height: 30px;
  height: 1.875rem;
  line-height: 30px;
  line-height: 1.875rem;
  padding: 0 15px;
  box-sizing: border-box;
  color: #ff6347;
  background-color: transparent;
  text-align: center;
  cursor: pointer;
  font-size: 0.75rem;
  text-align: center;
  border: 1px solid #ff6347;
  border: 0.0625rem solid #ff6347;
}

.popup_content:hover {
  background-color: rgba(0, 0, 0, 0);
  color: #ff8e7a;
  text-decoration: none;
}

.popup_content:focus {
  outline: none;
  background-color: rgba(13, 13, 13, 0);
  color: #ff3814;
}

.podrt_descr {
  max-width: 50%;
  margin: auto;
  background-color: #fff;
  padding: 16px 32px;
  padding: 1rem 2rem;
  position: relative;
}

.podrt_descr h3 {
  font-size: 14px;
  font-size: 0.875rem;
  line-height: 130%;
  margin: 0;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  text-transform: uppercase;
  margin-top: 16px;
  margin-top: 1rem;
  margin-bottom: 16px;
  margin-bottom: 1rem;
  text-align: center;
}

.podrt_descr p {
  font-size: 0.75rem;
  margin-bottom: 11.04px;
  margin-bottom: 0.69rem;
  line-height: 18px;
  line-height: 1.125rem;
  margin-top: 16px;
  margin-top: 1rem;
  margin-bottom: 16px;
  margin-bottom: 1rem;
}

.podrt_descr img {
  display: block;
  max-width: 100%;
  max-height: 100%;
  width: 100%;
}
@media screen and (max-width: 768px) {
 .portfolio_item {
    width: calc(50% - 30px);
  }
}

@media screen and (max-width: 576px) {
  .portfolio_item {
    width: calc(83.33333333333334% - 30px);
  }
}

@media screen and (max-width: 380px) {
  .portfolio_item {
    width: calc(100% - 30px);
  }
}
<!-- JS -->
$(".popup").magnificPopup({ type: 'image'});

$("#portfolio_grid").mixItUp();

$(".popup_content").magnificPopup({
    type:"inline",
    midClick: true
});

$(".portfolio li").click(function() {
    $(".portfolio li").removeClass("active");
    $(this).addClass("active");
});
