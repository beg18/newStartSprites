var gulp = require('gulp'),
    less = require('gulp-less'),
    prefixer = require('gulp-autoprefixer'),
    cssbeautify = require("gulp-cssbeautify"),
    cssnano = require('gulp-cssnano'),
    removeComments = require('gulp-strip-css-comments'),
    cheerio = require('gulp-cheerio'),
    webp = require('imagemin-webp'),
    imagemin = require('gulp-imagemin'),
    svgSprite = require('gulp-svg-sprite'),
    svgmin = require('gulp-svgmin'),
    imageminJpegRecompress = require('imagemin-jpeg-recompress'),
    pngquant = require('imagemin-pngquant'),
    plumber = require("gulp-plumber"),
    replace = require('gulp-replace'),
    extReplace = require('gulp-ext-replace'),
    rigger = require('gulp-rigger'),
    uglify = require('gulp-uglify'),
    watch = require('gulp-watch'),
    rimraf = require('rimraf'),
    gcmq = require('gulp-group-css-media-queries'),
    sourcemaps = require('gulp-sourcemaps'),
    run = require("run-sequence"),
    del          = require('del'),
    newer        = require('gulp-newer'),
    rename       = require('gulp-rename'),
   /* responsive   = require('gulp-responsive'), */
    spritesmith = require("gulp.spritesmith"),
    rsync        = require('gulp-rsync'),
    browserSync = require('browser-sync').create();

var path = {
    // Откуда брать исходники
    src: {
        html:   'src/*.html',
        js:     'src/js/*.js',
        css:    'src/css/+(style|styles-percentage|styles-ie).less',
        allimg: 'src/i/**/*.{png,jpg,jpeg,svg,raw,gif,ico}',
        webp:   'src/i/**/*.{png,jpg,jpeg}',
        svg:    'src/i/**/*.svg',
        fonts:  'src/fonts/**/*.*'
    },
    // Куда складывать готовые файлы после сборки
    assets: {
        html:   'assets/',
        js:     'assets/js/',
        css:    'assets/css/',
        allimg: 'assets/i/',
        webp:   'assets/i/webp/',
        svg:    'assets/i/',
        fonts:  'assets/css/fonts/'
    },
    // За изменениями каких файлов мы хотим наблюдать
    watch: {
        html:   'src/**/*.html',
        js:     'src/js/*.js',
        css:    'src/css/**/*.less',
        allimg: 'src/i/**/*.{png,jpg,jpeg,svg,raw,gif,ico}',
        webp:   'src/i/**/*.{png,jpg,jpeg}',
        svg:    'src/i/**/*.svg',
        fonts:  'src/css/fonts/**/*.*'
    },
    clean: './assets'
};

gulp.task('browserSync',['css:assets', 'js:assets'], function () {
    browserSync.init({
        server: {
            baseDir: path.assets
        },
        // notify: false,
        // online: false, // Work offline without internet connection
        // tunnel: true, tunnel: 'projectname', // Demonstration page: http://projectname.localtunnel.me
        //tunnel: true
    });
});



gulp.task('html:assets', function () {
    // Выберем файлы по нужному пути
    gulp.src(path.src.html)
         .pipe(plumber())
        // Прогоним через rigger
        .pipe(rigger())
        // Переместим их в папку assets
        .pipe(gulp.dest(path.assets.html))
        .pipe(browserSync.reload({stream: true}));
});


gulp.task('css:assets', function () {
    // Выберем наш style.less
    gulp.src(path.src.css)
        .pipe(plumber())
        .pipe(sourcemaps.init())
        // Скомпилируем
        .pipe(less())
        .pipe(gcmq())
        // Добавим вендорные префиксы
        .pipe(prefixer({
           browsers: ['last 8 version']
        }))
        .pipe(cssbeautify())
        .pipe(gulp.dest(path.assets.css))
        // Сожмем
        .pipe(cssnano({
          zindex: false,
            discardComments: {
              removeAll: true
            }
          }))
        .pipe(sourcemaps.write())
        .pipe(removeComments())
        .pipe(rename({
            suffix: ".min",
            extname: ".css"
        }))
        // Переместим в assets
        .pipe(gulp.dest(path.assets.css))
        .pipe(browserSync.reload({stream: true}));
});


gulp.task('js:assets', function () {
    // Выберем файлы по нужному пути
    gulp.src(path.src.js)
        .pipe(plumber())
        // Прогоним через rigger
        .pipe(rigger())
        .pipe(gulp.dest(path.assets.js))
        // Сожмем js
        .pipe(uglify())
        .pipe(rename({
            suffix: ".min",
            extname: ".js"
        }))
        .pipe(gulp.dest(path.assets.js))
        .pipe(browserSync.reload({stream: true}));
});

// Responsive Images
var quality = 95; // Responsive images quality

// Produce @2x images
gulp.task('allimg:assets', function() {
    return gulp.src(path.src.allimg)
        .pipe(newer(path.assets.allimg))

        //.pipe(responsive({
           // '**/*': { width: '100%', quality: quality }
        //})).on('error', function (e) { console.log(e) })

        // Сожмем их
        .pipe(imagemin([
            imagemin.jpegtran({progressive: true}),
            imageminJpegRecompress({
                loops: 5,
                min: 65,
                max: 70,
                quality: 'medium'
            }),
            imagemin.optipng({optimizationLevel: 3}),
            pngquant({quality: '65-70', speed: 5})
        ]))
        // Переместим в assets
        .pipe(rename(function (path) {path.extname = path.extname.replace('jpeg', 'jpg')}))
        .pipe(gulp.dest(path.assets.allimg))
});


// Produce webp
gulp.task('webp:assets', function() {
    return gulp.src(path.src.webp)
        .pipe(newer(path.assets.webp))

        // Сожмем их
        .pipe(imagemin([
            webp({quality: 50})
        ]))
        .pipe(extReplace('.webp'))
        .pipe(gulp.dest(path.assets.webp))
});

gulp.task('svg:assets', function () {
    gulp.src(path.src.svg)
        .pipe(svgmin({
            js2svg: {
                pretty: false
            }
        }))
        .pipe(cheerio({
            run: function ($) {
                $('[fill]').removeAttr('fill');
                $('[stroke]').removeAttr('stroke');
                $('[style]').removeAttr('style');
            },
            parserOptions: {xmlMode: true}
        }))
        .pipe(replace('&gt;', '>'))
        // assets svg sprite
        .pipe(svgSprite({
            mode: {
                symbol: {
                    sprite: "sprite.svg"
                }
            }
        }))
        .pipe(gulp.dest(path.assets.svg));
});

gulp.task('sprites:assets', function () {
  var spriteData =
    gulp.src('src/i/sprite/*.*') //path to source
      .pipe(spritesmith({
        imgName: 'sprite.png', //sprite file name
        cssName: 'sprite-position.less', //sprite less name where are stored image position
        padding: 15,
        imgPath: '../i/sprite/sprite.png', //path to sprite file
        cssFormat: 'less', //css format
        algorithm: 'binary-tree',
        cssTemplate: 'template.mustache', //mask file
        cssVarMap: function(sprite) {
          sprite.name = 's-' + sprite.name //sprite name format, ex. 's-logo' for logo.png
        }
      }));
    spriteData.img
      .pipe(gulp.dest('assets/i/sprite')); //path to save sprite file on build
    spriteData.css
      .pipe(gulp.dest('src/css/')); //path to save style file on build
});

//gulp.task('img:assets', gulp.series('resimg_1:assets', 'resimg_2:assets', bsReload));

// Clean @*x IMG's
gulp.task('cleanimg', function() {
    return del(['assets/i/@*/sprite'], { force: true }) // удалить все папки кроме _src gulp cleanimg
});

// Clean @*x IMG's
gulp.task('cleanLess', function() {
    return del(['assets/css/**/*less'], { force: true }) // удалить все папки кроме _src gulp cleanimg
});


gulp.task('fonts:assets', function() {
    gulp.src(path.src.fonts)
    // Переместим шрифты в assets
    .pipe(gulp.dest(path.assets.fonts))
});

gulp.task('clean', function (cb) {
    rimraf(path.clean, cb);
});


gulp.task('gcmd:assets', function(){
    gulp.src(path.src.css)
        .pipe(rigger())
        .pipe(gulp.dest(path.assets.css));
});

gulp.task('assets', [
    'html:assets',
    'js:assets',
    'css:assets',
    'allimg:assets',
    'webp:assets',
    'sprites:assets',
    'svg:assets',
    'fonts:assets',
    'gcmd:assets'
]);

gulp.task('watch' , function() {
    watch([path.watch.html], function(event, cb) {
        gulp.start('html:assets');
    });
    watch([path.watch.css], function(event, cb) {
        gulp.start('css:assets');
    });

    watch([path.watch.js], function(event, cb) {
        gulp.start('js:assets');
    });
    
    watch([path.watch.allimg], function(event, cb) {
        gulp.start('allimg:assets');
    });
    watch([path.watch.webp], function(event, cb) {
        gulp.start('webp:assets');
    });
    watch([path.watch.allimg], function(event, cb) {
        gulp.start('sprites:assets');
    });
    watch([path.watch.svg], function(event, cb) {
        gulp.start('svg:assets');
    });
    watch([path.watch.fonts], function(event, cb) {
        gulp.start('fonts:assets');
    });
    watch([path.watch.css], function(event, cb) {
        gulp.start('gcmd:assets');
    });
});

gulp.task('default', ['browserSync', 'assets', 'watch']);
gulp.task('clean', ['cleanimg','cleanLess']);