<nav role="navigation" id="nav">
<input class="trigger" type="checkbox" id="mainNavButton">
<label for="mainNavButton" onclick>Menu</label>
<ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About Us</a>
            <ul>
                <li><a href="#">Sub Nav Item</a></li>
                <li><a href="#">Sub Nav Item</a>
                    <ul>
                        <li><a href="#">Sub Sub Nav Item</a></li>
                        <li><a href="#">Sub Sub Nav Item</a></li>
                        <li><a href="#">Sub Sub Nav Item</a></li>
                        <li><a href="#">Sub Sub Nav Item</a></li>
                    </ul>
                </li>
                <li><a href="#">Sub Nav Item</a></li>
                <li><a href="#">Sub Nav Item</a></li>
            </ul>
    </li>
    <li><a href="#">Products</a></li>
    <li><a href="#">Blog</a></li>
    <li><a href="#">Specials</a></li>
    <li><a href="#">Contact Us</a></li>
</ul>
</ul>
</nav>

<h1>Responsive Flexbox Nav with :checked hack</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae, dignissimos, distinctio consequatur eos optio recusandae maiores quidem possimus tempora esse reiciendis velit ut consequuntur architecto hic soluta deleniti fugit explicabo.</p>



body {
    margin: 25px;
    -webkit-animation: bugfix infinite 1s;
    /* needed for checkbox hack */
    background: #021320;
}

@-webkit-keyframes bugfix {
    from {
        padding: 0;
    }
    to {
        padding: 0;
    }
}
/* needed for checkbox hack */
h1,
p {
    color: white;
}

#nav {
    position: relative;
}
#nav ul {
    display: none;
    width: 100%;
    list-style: none;
    margin: 0px;
    padding: 0px;
}
#nav ul li a {
    display: block;
    padding: 1em;
    background: #0f9962;
    color: white;
    text-decoration: none;
    border-right: 1px solid #0a6b44;
}
#nav ul li a:hover {
    background: #0d8253;
}
#nav ul li:last-of-type a {
    border-right: 0px;
}
#nav ul li ul li a {
    padding-left: 1.5em;
}
#nav ul li ul li ul li a {
    padding-left: 3.125em;
}
#nav input.trigger {
    position: absolute;
    top: -9999px;
    left: -9999px;
}
#nav input.trigger:checked ~ ul, #nav input.trigger:checked ~ ul li ul {
    display: block !important;
}
@media (min-width: 48em) {
    #nav input.trigger:checked ~ ul, #nav input.trigger:checked ~ ul li ul {
        /* older flexbox */
        display: -webkit-box;
        display: -moz-box;
        display: box;
        -webkit-box-orient: horizontal;
        -moz-box-orient: horizontal;
        box-orient: horizontal;
        /* newer flexbox */
        display: flex;
        flex-direction: row;
    }
}
#nav label {
    position: relative;
    display: block;
    min-height: 2em;
    padding: 0.45em;
    font-size: 1.1em;
    margin: 0;
    cursor: pointer;
    background: #005292;
    line-height: 2em;
    color: #bfe1fb;
}
#nav label:after {
    position: absolute;
    right: 1em;
    top: 0.2em;
    content: "\2261";
    font-size: 1.8em;
    color: white;
}
@media (min-width: 48em) {
    #nav ul {
        /* older flexbox */
        display: -ms-flexbox;
        flex-direction: -ms-row;
        display: -webkit-box;
        display: -moz-box;
        display: box;
        -webkit-box-orient: horizontal;
        -moz-box-orient: horizontal;
        box-orient: horizontal;
        /* newer flexbox */
        display: flex;
        flex-direction: row;
    }
    #nav ul li {
        position: relative;
        text-align: center;
        /* older flexbox */
        -ms-flex: 1;
        -webkit-box-flex: 1;
        -moz-box-flex: 1;
        box-flex: 1;
        /* newer flexbox */
        flex: 1;
    }
    #nav ul li ul {
        display: none !important;
        position: absolute;
        top: 3.0625em;
        left: 0;
        display: block;
        width: 12.5em;
        z-index: 200;
    }
    #nav ul li ul li {
        text-align: left;
    }
    #nav ul li ul li ul {
        z-index: 300;
        top: 0px;
        left: 12.4em;
    }
    #nav ul li ul li ul li a {
        padding-left: 30px !important;
    }
    #nav ul li:hover > ul {
        display: block !important;
    }
    #nav label {
        display: none;
    }
}


/*

Support: IE10+, FF28+

Checkbox hack:
http://timpietrusky.com/advanced-checkbox-hack

Polyfill for old IE:
http://flexiejs.com/

Warning: Not super accessible - just for fun


*/



