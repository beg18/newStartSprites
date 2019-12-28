<!--
==========================================
widget-cat-radio
=========================================
 -->
<div class="widget $className$-item">
    <h3 class="$className$-item__title">
      <a href="#" title="$className$">
         $className$
      </a>
    </h3>
    <div class="$className$-line">
      <input id="$className$-cat-men" name="$className$" type="radio">
      <label for="$className$-cat-men">Men</label>
    </div>
    <div class="$className$-line">
      <input id="$className$-cat-women" name="$className$" type="radio">
      <label for="$className$-cat-women">Women</label>
    </div>
    <div class="$className$-line">
      <input id="$className$-cat-child" name="$className$" type="radio">
      <label for="$className$-cat-child">Children</label>
    </div>
    <div class="$className$-line">
      <input id="$className$-cat-hot" name="$className$" type="radio">
      <label for="$className$-cat-hot">Hot Deals</label>
    </div>
</div>

.widget {
  background-color: #FFFFF;
  padding: 40px;
  margin-bottom: 30px;
}

.$className$-item {

}

.$className$-item__title {

a {

}

}

.$className$-line {
  margin-bottom: 32px;

  & label {
    .ff-open-sans(700);
    .rem-size(16);
    cursor: pointer;
    color: #292929;
  }

  & input[type="radio"]{
    .hide(none);

    &:checked {
      & + label {
        color: #B8B800;
      }
    }
  }
}
<!--
widget-range

 -->
<div class="widget $className$-item">
    <h3 class="$className$-item__title">
      <a href="#" title="$className$">
         $className$
      </a>
    </h3>
    <div class="$className$-line">
      <input  type="range" >
    </div>
    <div class="$className$-line $className$-line--price">
        <div class="$className$-price-from">
            <span>From</span>
            <input type="text" name="from" value="from">
        </div>
        <div class="$className$-price-to">
            <span>To</span>
            <input type="text" name="to" value="to">
        </div>
    </div>
</div>

.widget {
  background-color: #FFFFF;
  padding: 40px;
  margin-bottom: 30px;
}

input[type="range"] {
  width: 100%;
}
<!--
==========================================
widget-cat-checkbox
=========================================
 -->
<div class="widget $className$-item">
    <h3 class="$className$__title">
      <a href="#" title="$className$">
         $className$
      </a>
    </h3>
    <div class="$className$__line">
      <label class="$className$-label__wrap" for="$className$-sizes-small">Small
          <input id="$className$-sizes-small"  type="checkbox">
          <span class="$className$-custom__checkbox"></span>
      </label>
    </div>
    <div class="$className$__line">
       <label class="$className$-label__wrap" for="$className$-sizes-medium">Medium
          <input id="$className$-sizes-medium"  type="checkbox">
          <span class="$className$-custom__checkbox"></span>
        </label>
    </div>
    <div class="$className$__line">
      <label class="$className$-label__wrap" for="$className$-sizes-large">Large
        <input id="$className$-sizes-large" type="checkbox">
        <span class="$className$-custom__checkbox"></span>
      </label>
    </div>
    <div class="$className$__line">
      <label class="$className$-label__wrap" for="$className$-sizes-xlarge">XLarge
        <input id="$className$-sizes-xlarge" type="checkbox">
        <span class="$className$-custom__checkbox"></span>
      </label>
    </div>
</div>

.widget {
  background-color: #FFFFF;
  padding: 40px;
  margin-bottom: 30px;
}

.$className$-label__wrap  {
  position:relative;
  display: block;
  padding-left: 40px;
  cursor:pointer;

input[type="checkbox"]{
  display: none;

   &:checked{
    & + .$className$-custom__checkbox {
      &::before {
         border: 4px solid #B8B800;
      }
    }
  }
}



.$className$-custom__checkbox {
   position: absolute;
   left: 0;

    &::before {
      content:"";
      display: inline-block;
      width:15px;
      height: 15px;
      background-color: #C0C0C0;
    }
  }
}
















