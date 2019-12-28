### <a name="selection"></a> &#8226; selection
**Summary:**

The ::selection CSS pseudo-element applies rules to the portion of a document that has been highlighted.
LESS CSS compiler doesn't allow to have properties in the root. It's better to understand the problem on the example.

    // There is no selector
    color: red;
  
    SyntaxError: properties must be inside selector blocks, they cannot be in the root. 
  
    div { color: red; } // This is correct

Therefore LESS Hat generates **placeholder** selector `lesshat-selector { -lh-property: 0; }` with unknown property, which browsers ignore and after that, there is actually selection syntax.    
  
**THIS MIXIN MUST BE INTERPOLATED `~''`**  
  
Use this mixin outside of CSS selectors

Resources: **[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/::selection)**

**Syntax:**

    .selection(<CSS properties>[, <element>]) 
  
**Example:**

    .selection(~'color: blue; background: red');
    
    // Result
    lesshat-selector {-lh-property: 0;} 
    ::selection{color: blue; background: red}
    ::-moz-selection{color: blue; background: red;}


### <a name="selection"> </a> • выбор
**Резюме:**

Псевдоэлемент :: selection CSS применяет правила к части выделенного документа.
LESS CSS компилятор не позволяет иметь свойства в корне. Лучше понять проблему на примере.

    // Нет селектора
    красный цвет;
  
    СинтаксисError: свойства должны быть внутри блоков селектора, они не могут быть в корне.
  
    div {цвет: красный; } // Это верно

Поэтому LESS Hat генерирует ** placeholder ** selector `lesshat-selector {-lh-property: 0; } `
с неизвестным свойством, которые игнорируются браузерами, и после этого на самом деле существует 
синтаксис выбора.
  
** ЭТО МИКСИН ДОЛЖЕН БЫТЬ ИНТЕРПОЛЯЦИИ `~ ''` **
  
Используйте этот mixin вне селекторов CSS

Ресурсы: ** [MDN] (https://developer.mozilla.org/en-US/docs/Web/CSS/::selection) **

**Синтаксис:**

    .selection (<свойства CSS> [, <element>])
  
**Пример:**

    .selection (~ 'color: blue; background: red');
    
    // Результат
    lesshat-selector {-lh-property: 0;}
    :: selection {color: blue; фон: красный}
    :: - moz-selection {color: blue; фон: красный;}