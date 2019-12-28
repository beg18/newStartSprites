### <a name="perspective"></a> &#8226; perspective
**Summary:**

The perspective CSS property determines the distance between the z=0 plane and the user in order to give to the 3D-positioned element some perspective.

Resources: **[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/perspective)**, **[CSS-Tricks](http://css-tricks.com/almanac/properties/p/perspective/)**

**Syntax:**

Default value: none

    .perspective(none | <length>)

**Tips and tricks:**

  If you omit units, `perspective` adds `px` automatically.  
  
**Example:**

    div {
     .perspective(1000);
    }
    
    // Result
    div {
     -moz-perspective: 1000px;
     -webkit-perspective: 1000px;
     perspective: 1000px;
    }


### <a name="perspective"> </a> • перспектива
**Резюме:**

Перспективное свойство CSS определяет расстояние между плоскостью z = 0 и пользователем, 
чтобы дать 3D-позиционируемому элементу некоторую перспективу.

Ресурсы: ** [MDN] (https://developer.mozilla.org/en-US/docs/Web/CSS/perspective) **, 
** [CSS-Tricks] (http://css-tricks.com / альманах / свойства / р / перспектива /) **

**Синтаксис:**

Значение по умолчанию: none

     .первый (нет | <длина>)

**Советы и приемы:**

   Если вы опускаете единицы, `перспектива 'автоматически добавляет` px`.
  
**Пример:**

     div {
      .perspective (1000);
     }
    
     // Результат
     div {
      -моз-перспектива: 1000 пикселей;
      -webkit-перспектива: 1000px;
      перспектива: 1000 пикселей;
     }