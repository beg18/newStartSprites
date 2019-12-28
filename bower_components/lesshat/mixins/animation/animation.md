### <a name="animation"> </a> • анимация
**Резюме:**

Сокращение для определения анимации CSS, установка всех параметров сразу.

Ресурсы: ** [WebPlatform] (http://docs.webplatform.org/wiki/css/properties/animation/animation) **, ** [CSS3files] (http://www.css3files.com/animation/) **

**Синтаксис:**

Значение по умолчанию: none

     .animation (анимация-имя | анимация-продолжительность | анимация-время-функция | анимация-задержка | анимация-итерация-счет | анимация-направление | анимация-fill-mode, [...] *)

**Пример:**

     div {
      .animation (nameAnimation 2s linear alternate);
     }
    
     // Результат
     div {
      -webkit-animation: nameAnimation 2s linear alternate;
      -moz-animation: nameAnimation 2s linear alternate;
      -o-animation: nameAnimation 2s linear alternate;
      анимация: nameAnimation 2s linear alternate;
     }