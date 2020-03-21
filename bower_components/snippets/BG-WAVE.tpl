<!--
=====================================================
http://jsbin.com/hotugu/3/edit?html
http://www.websovet.com/razdelitelnaya-liniya-v-vide-volny-na-css
=====================================================
-->
<div class="holder">
    <div class="line line1"></div>
    <div class="line line2"></div>
</div>

<div class="holder">
    <div class="smallLine smallLine1"></div>
    <div class="smallLine smallLine2"></div>
</div>

<div class="holder">
    <div class="tinyLine tinyLine1"></div>
    <div class="tinyLine tinyLine2"></div>
</div>

<div class="holder">
    <div class="circle circle1"></div>
    <div class="circle circle2"></div>
</div>

<div class="holder">
    <div class="ellipse ellipse1"></div>
    <div class="ellipse ellipse2"></div>
</div>
<!--
======================================================
CSS
======================================================
-->
.holder {
    /* Clip edges, as some of the lines don't terminate nicely. */
        overflow: hidden;
        position: relative;
        width: 200px;
        height: 50px;
}

.line {
        position: absolute;
        width: 200px;
        /* Height set to clip correctly basically background-size/2 + line width */
        height: 26px;
}
.line1 {
        background: linear-gradient(45deg, transparent, transparent 49%, red 49%, transparent 51%);
}
.line2 {
        background: linear-gradient(-45deg, transparent, transparent 49%, red 49%, transparent 51%);
}
.line {
        /* Must be after background definition... */
        background-size: 50px 50px;
}


.smallLine {
        position: absolute;
        width: 200px;
        height: 5px;
}

.smallLine1 {
        background: linear-gradient(45deg, transparent, transparent 49%, red 49%, transparent 51%);
}
.smallLine2 {
        background: linear-gradient(-45deg, transparent, transparent 49%, red 49%, transparent 51%);
}

.smallLine {
        background-size: 10px 10px;
}


.tinyLine {
        position: absolute;
        width: 200px;
        height: 1.5px;
}

.tinyLine1 {
        background: linear-gradient(45deg, transparent, transparent 49%, red 49%, transparent 51%);
}
.tinyLine2 {
        background: linear-gradient(-45deg, transparent, transparent 49%, red 49%, transparent 51%);

}

.tinyLine {
        /* Must be after background definition... */
        background-size: 4px 4px;
}


.circle {
        position: absolute;
        width: 200px;
        height: 20px;
        background: radial-gradient(16px, transparent, transparent 4px, black 4px, black 10px, transparent 11px);
        background-size: 30px 40px;
}

.circle2 {
        /* Offset to make squigglies line up */
        top: 20px;
        left: 15px;
        background-position: 0px -20px;
}


.ellipse {
        position: absolute;
        background: radial-gradient(ellipse, transparent, transparent 7px, black 7px, black 10px, transparent 11px);
        background-size: 36px 40px;
        width: 200px;
        height: 20px;
}

.ellipse2 {
        top: 20px;
        left: 18px;
        background-position: 0px -20px;
}