### <a name="animation-timing-function"></a> &#8226; animation-timing-function
**Summary:**

The animation-timing-function CSS property determines whether an animation is running or paused. You can query this property's value to determine whether or not the animation is currently running; in addition, you can set its value to pause and resume playback of an animation.

Resources: **[WebPlatform](http://docs.webplatform.org/wiki/css/properties/animation-timing-function)**, **[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-timing-function)**

**Syntax:**

Default value: ease

    .animation-timing-function(<single-animation-timing-function>, …)
  
**Example:**

    div {
     .animation-timing-function(cubic-bezier(0.1, 0.7, 1.0, 0.1));
    }
    
    // Result
    div {
     -webkit-animation-timing-function: cubic-bezier(0.1, 0.7, 1.0, 0.1);
     -moz-animation-timing-function: cubic-bezier(0.1, 0.7, 1.0, 0.1);
     -o-animation-timing-function: cubic-bezier(0.1, 0.7, 1.0, 0.1);
     animation-timing-function: cubic-bezier(0.1, 0.7, 1.0, 0.1);
    } 


### <a name="animation-timing-function"> </a> • функция анимации-времени
**Резюме:**

Свойство CSS функции анимации-времени определяет, работает ли анимация или приостановлена. 
Вы можете запросить значение этого свойства, чтобы определить, выполняется ли в данный момент анимация; 
кроме того, вы можете установить его значение для приостановки и возобновления воспроизведения анимации.

Ресурсы: ** [WebPlatform] (http://docs.webplatform.org/wiki/css/properties/animation-timing-function) **, 
** [MDN] (https://developer.mozilla.org/en -US / Docs / Web / CSS / анимация-временная функция) **

**Синтаксис:**

Значение по умолчанию: легкость

    .animation-timing-function (<single-animation-timing-function>, ...)
  
**Пример:**

    div {
     .анимационная функция времени (кубический-безье (0,1, 0,7, 1,0, 0,1));
    }
    
    // Результат
    div {
     -webkit-animation-timing-function: кубический-безье (0,1, 0,7, 1,0, 0,1);
     -moz-animation-timing-function: кубический-безье (0,1, 0,7, 1,0, 0,1);
     -o-animation-timing-function: кубический-безье (0,1, 0,7, 1,0, 0,1);
     анимация-временная функция: кубик-безье (0,1, 0,7, 1,0, 0,1);
    }