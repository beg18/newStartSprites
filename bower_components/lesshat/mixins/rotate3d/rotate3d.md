### <a name="rotate3d"></a> &#8226; rotate3d
**Summary:**

The rotate3d()CSS function defines a transformation that moves the element around a fixed axe without deforming it.

Resources: **<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function#rotate3d()">MDN</a>**

**Syntax:**

Default value: 0, 0, 0, 0

    .rotate3d(<number>, <number>, <number>, <angle>)

**Tips and tricks:**

  If you omit angle unit, `rotate3d` adds `deg` automatically.  
  
**Example:**

    div {
     .rotate3d(1, 0, 0, 50);
    }
    
    // Result
    div {
     -webkit-transform: rotate3d(1, 0, 0, 50deg);
     -moz-transform: rotate3d(1, 0, 0, 50deg);
     -ms-transform: rotate3d(1, 0, 0, 50deg);
     -o-transform: rotate3d(1, 0, 0, 50deg);
     transform: rotate3d(1, 0, 0, 50deg);
    }


### <a name="rotate3d"> </a> • rotate3d
**Резюме:**

Функция CSS rotate3d () определяет преобразование, которое перемещает элемент вокруг неподвижного топора, 
не деформируя его.

Ресурсы: ** <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function#rotate3d()"> 
MDN </a> **

**Синтаксис:**

Значение по умолчанию: 0, 0, 0, 0

     .rotate3d (<число>, <число>, <число>, <угол>)

**Советы и приемы:**

   Если вы опускаете угловой блок, `rotate3d` автоматически добавляет` deg`.
  
**Пример:**

     div {
      .rotate3d (1, 0, 0, 50);
     }
    
     // Результат
     div {
      -webkit-transform: rotate3d (1, 0, 0, 50deg);
      -moz-transform: rotate3d (1, 0, 0, 50deg);
      -ms-transform: rotate3d (1, 0, 0, 50deg);
      -o-transform: rotate3d (1, 0, 0, 50deg);
      transform: rotate3d (1, 0, 0, 50deg);
     }