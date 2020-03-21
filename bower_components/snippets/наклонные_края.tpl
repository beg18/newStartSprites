<!--
=========================================================================
https://webformyself.com/transformaciya-i-maski-css-naklonnye-kraya/
=========================================================================
-->
<div class="hero">
    <figure>
        <img src="https://unsplash.it/1600/900?image=830" alt="" />
        <figcaption>
            <h1>Angled Edge</h1>
            <p>Image with CSS clip-path</p>
        </figcaption>
    </figure>
</div>

<div class="promo">
    <h1>Angled Edge</h1>
    <p>CSS background with CSS clip-path</p>
</div>
<!--
========================================================
SCSS
========================================================
-->
// slanted edge here
.hero img {
    clip-path: polygon(0 0, 100% 0, 100% 96%, 0 100%);
}
.promo {
    clip-path: polygon(0 0, 1600px 0, 1600px 87%, 0 100%);
}

// demo code below
.hero {
    color: #fff;
    font-family: 'Fira Sans', sans-serif;
    position: relative;
    text-align: center;
    text-shadow: 0px 0px 1px rgba(0,0,0,0.5);

    img {
        width: 100%;
    }

    figcaption {
        left: 50%;
        position: absolute;
        top: 50%;
        transform: translate(-50%, -50%);
        width: 100%;
    }

    h1 {
        font-size: 32px;
    }

    p {
        font-size: 14px;
        font-weight: 300;
        margin-top: 0.5em;
    }
}

.promo {
    background: url(https://unsplash.it/1600/900?image=830) no-repeat;
    background-size: cover;
    color: #fff;
    font-family: 'Fira Sans', sans-serif;
    margin: 50px 0;
    overflow: hidden;
    padding: 150px 20px;
    position: relative;
    text-align: center;
    text-shadow: 0px 0px 1px rgba(0,0,0,0.5);

    h1 {
        font-size: 32px;
    }

    p {
        font-size: 14px;
        font-weight: 300;
        margin-top: 0.5em;
    }
}
<!--
=========================================================
ВТОРОЙ ВАРИАНТ
========================================================
-->
<div class="quote">
    <h1>Angled Edges</h1>
    <p>With 2 Pseudo Elements</p>
</div>

<!--
========================================================
SCSS
========================================================
-->


// slanted edges here
.quote {
    background: #41ade5;
    position: relative;
    z-index: 1;

    &:before,
    &:after {
        background: inherit;
        content: '';
        display: block;
        height: 50%;
        left: 0;
        position: absolute;
        right: 0;
        z-index: -1;
        -webkit-backface-visibility: hidden; // for Chrome Windows
    }

    &:before {
        top: 0;
        transform: skewY(1.5deg);
        transform-origin: 100% 0;
    }

    &:after {
        bottom: 0;
        transform: skewY(-1.5deg);
        transform-origin: 100%;
    }
}

// demo code below
.quote {
    color: #fff;
    font-family: 'Fira Sans', sans-serif;
    margin: 50px 0;
    padding: 20% 20px;
    text-align: center;
}

h1 {
    font-size: 32px;
    font-weight: 500;
}

p {
    font-size: 14px;
    font-weight: 300;
    margin-top: 0.5em;
}

View Compiled



