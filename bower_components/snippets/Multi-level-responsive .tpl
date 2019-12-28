<nav class="nav-collapse" role="navigation">
    <ul class="tabs primary-nav">
        <li class="tabs__item">
            <a href="#" class="tabs__link">Home</a>
        </li>
        <li class="tabs__item">
            <a href="#" class="tabs__link">Talks</a>
        </li>
        <li class="tabs__item">
            <a href="#" class="tabs__link">Schedule</a>
        </li>
        <li class="tabs__item">
            <a href="#" class="tabs__link">Location</a>
        </li>
        <li class="tabs__item">
            <a href="#" class="tabs__link">Contact</a>
        </li>
    </ul>
</nav>


@import url(https://fonts.googleapis.com/css?family=Share:400,700&subset=latin,latin-ext);

* {
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

html {
        font: 0.75em/1.5 sans-serif;
        background: #000;
        margin-top: 50px;
}

/**
 * Tabs object.
 *
 * 1. Tables (kinda) for layout!
 * 2. This is the magic bit; make all children occupy equal width.
 * 3. Required to make the tabs fill their container.
 * 4. Make each tab pack up horizontally.
 * 5. Ensure the hit area covers the whole tab.
 */
.tabs {
        margin:  0;
        padding: 0;
        list-style: none;
        display: table; /* [1] */
        table-layout: fixed; /* [2] */
        width: 100%; /* [3] */
}

        .tabs__item {
                width: 100%;
                float: left;
        }

        @media screen and (min-width: 40em) {
                .tabs__item {
                    display: table-cell; /* [4] */
                    float: none;
                    width: auto;
                }
        }

                .tabs__link {
                        display: block; /* [5] */
                }


/**
 * Primary nav. Extends `.tabs`.
 *
 * 1. Stop tabs’ corners leaking out beyond our 4px round.
 */
.primary-nav {
        text-align: center;
        border-radius: 0;
        overflow: hidden; /* [1] */
}

                .primary-nav a {
                        padding: .75em 1em;
                        color: white;
                        background: rgba(255, 255, 255, 0.1);
                        color: #fff;
                        text-decoration: none;
                        border-right: 1px solid #000;
                        font-family: Share, Helvetica, Arial, sans-serif;
                        font-weight: 400;
                        font-size: 1.75em;
                }

                .primary-nav a:hover {
                        color: black;
                        background: #f8d800;
                }

/* Responsive-nav.js */

.js .nav-collapse {
    clip: rect(0 0 0 0);
    max-height: 0;
    position: absolute;
    display: block;
    overflow: hidden;
    zoom: 1;
}

.nav-collapse.opened {
    max-height: 9999px;
}

.disable-pointer-events {
    pointer-events: none !important;
}

.nav-toggle {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    -o-user-select: none;
    user-select: none;
}

@media screen and (min-width: 40em) {
    .js .nav-collapse {
        position: relative;
    }
    .js .nav-collapse.closed {
        max-height: none;
    }
    .nav-toggle {
        display: none;
    }
}

.nav-collapse {
    list-style: none;
    width: 100%;
    float: left;
}

.fixed {
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
}

.nav-toggle {
    position: fixed;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    text-decoration: none;
    text-indent: -999px;
    position: relative;
    overflow: hidden;
    width: 70px;
    height: 55px;
    float: right;
}

.nav-toggle:before {
    color: #f8d800; /* Edit this to change the icon color */
    font-family: "responsivenav", sans-serif;
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    font-size: 28px;
    text-transform: none;
    position: absolute;
    content: "≡";
    text-indent: 0;
    text-align: center;
    line-height: 55px;
    speak: none;
    width: 100%;
    top: 0;
    left: 0;
}

.nav-toggle.active::before {
    font-size: 24px;
    content:"x";
}

var navigation = responsiveNav(".nav-collapse", {
    animate: true,                    // Boolean: Use CSS3 transitions, true or false
    transition: 284,                  // Integer: Speed of the transition, in milliseconds
    label: "Menu",                    // String: Label for the navigation toggle
    insert: "before",                  // String: Insert the toggle before or after the navigation
    customToggle: "",                 // Selector: Specify the ID of a custom toggle
    closeOnNavClick: false,           // Boolean: Close the navigation when one of the links are clicked
    openPos: "relative",              // String: Position of the opened nav, relative or static
    navClass: "nav-collapse",         // String: Default CSS class. If changed, you need to edit the CSS too!
    navActiveClass: "js-nav-active",  // String: Class that is added to <html> element when nav is active
    jsClass: "js",                    // String: 'JS enabled' class which is added to <html> element
    init: function(){},               // Function: Init callback
    open: function(){},               // Function: Open callback
    close: function(){}               // Function: Close callback
});


