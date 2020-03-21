<!--
===================================================
https://smooth.ie/blogs/news/svg-wavey-transitions-between-sections
https://codepen.io/fabswt/pen/xNbrgp?editors=1000
https://stackoverflow.com/questions/25895895/creating-a-droplet-like-border-effect-in-css/25903879#25903879
===================================================
 -->
<div id="A">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Vivamus nec quam tincidunt, iaculis mi non, hendrerit felis.
    Nulla pretium lectus et arcu tempus, quis luctus ex imperdiet.
    In facilisis nulla suscipit ornare finibus. …
</div>

<div class="container">
    <svg viewBox="0 70 500 60" preserveAspectRatio="none">
        <rect x="0" y="0" width="500" height="500" style="stroke: none;" />
        <path d="M0,100 C150,200 350,0 500,100 L500,00 L0,0 Z" style="stroke: none;"></path>
    </svg>
</div>

<div id="B">
    … In iaculis fermentum lacus vel porttitor.
    Vestibulum congue elementum neque eget feugiat.
    Donec suscipit diam ligula, aliquam consequat
    tellus sagittis porttitor. Sed sodales leo nisl,
    ut consequat est ornare eleifend. Cras et semper mi,
    in porta nunc.
</div>
<!--
=========================================
CSS
=========================================
 -->

#A {
    background: #0074d9;
}
#B {
    background: #7fdbff;
}

svg {
    width: 100%;
    height: 100%;
}

svg path {
    fill: #0074d9;
}

svg rect {
    fill: #7fdbff;
}

.container {
    --divider-height: 4rem;

    position: relative;
    top: calc(var(--divider-height) / 2 * -1);

    height: var(--divider-height);
    width: 100%;
    /* alternatively, could get rid of the rect, and move the svg container further down */

    float: left;
    z-index: 1;

    /*   outline: 1px solid red; */
}

/** Cosmetics **/
* {
    margin: 0;
}
#A,
#B {
    padding: 3rem;
}
div {
    font-family: monospace;
    font-size: 1.2rem;
    line-height: 1.2;
}
#A {
    color: white;
}
