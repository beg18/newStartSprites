var gulp = require('gulp'),
    less = require('gulp-less'),
    prefixer = require('gulp-autoprefixer'),
    sourcemaps = require('gulp-sourcemaps'),
    imagemin = require('gulp-imagemin'),
    imageminJpegRecompress = require('imagemin-jpeg-recompress'),
    pngquant = require('imagemin-pngquant'),
    svgSprite = require('gulp-svg-sprite'),
    svgmin = require('gulp-svgmin'),
    cheerio = require('gulp-cheerio'),
    run = require("run-sequence")
    replace = require('gulp-replace'),
    watch = require('gulp-watch'),
    uglify = require('gulp-uglify'),
    plumber = require("gulp-plumber"),
    rigger = require('gulp-rigger'),
    cssbeautify = require("gulp-cssbeautify"),
    removeComments = require('gulp-strip-css-comments'),
    cssnano = require('gulp-cssnano'),
    rimraf = require('rimraf'),
    gcmq = require('gulp-group-css-media-queries'),
    rsync        = require('gulp-rsync'),
    newer        = require('gulp-newer'),
    rename       = require('gulp-rename'),
    responsive   = require('gulp-responsive'),
    spritesmith = require("gulp.spritesmith"),
    del          = require('del'),
    browserSync = require('browser-sync').create();


var path = {
    // Откуда брать исходники
    src: {
        html:   'src/*.html',
        js:     'src/js/*.js',
        css:    'src/css/+(style|styles-percentage|styles-ie).less',
        skins:  'src/css/skins/+(blue|red|tomato|pink|purple\green|orange).less',
        resimg_1:'src/i/**/*.{png,jpg,jpeg,webp,raw,gif,ico}',
        resimg_2:'src/i/**/*.{png,jpg,jpeg,webp,raw,gif,ico}',
        svg:    'src/i/**/*.svg',
        fonts:  'src/fonts/**/*.*'
    },
    // Куда складывать готовые файлы после сборки
    assets: {
        html:   'assets/',
        js:     'assets/js/',
        css:    'assets/css/',
        skins:  'assets/css/skins/',
        resimg_1: 'assets/i/@1x',
        resimg_2: 'assets/i/@2x',
        svg:    'assets/i/',
        fonts:  'assets/css/fonts/'
    },
    // За изменениями каких файлов мы хотим наблюдать
    watch: {
        html:   'src/**/*.html',
        js:     'src/js/*.js',
        css:    'src/css/**/*.less',
        skins:  'src/css/skins/**/*.less',
        resimg_1:'src/i/**/*.{png,jpg,jpeg,webp,raw,gif,ico}',
        resimg_2:'src/i/**/*.{png,jpg,jpeg,webp,raw,gif,ico}',
        svg:    'src/i/**/*.svg',
        fonts:  'src/css/fonts/**/*.*'
    },
    clean: './assets'
};

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

gulp.task('skins:assets', function () {
    // Выберем наш style.less
    gulp.src(path.src.skins)
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
         .pipe(gulp.dest(path.assets.skins))
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
        .pipe(gulp.dest(path.assets.skins))
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
        // Переместим готовый файл в assets
        .pipe(gulp.dest(path.assets.js))
        .pipe(browserSync.reload({stream: true}));
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


// Responsive Images
var quality = 95; // Responsive images quality

// Produce @1x images
gulp.task('resimg_1:assets', function() {
    return gulp.src(path.src.resimg_1)
        .pipe(newer(path.assets.resimg_1))
        .pipe(responsive({
            '**/*': { width: '50%', quality: quality }
        })).on('error', function (e) { console.log(e) })
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
        .pipe(gulp.dest(path.assets.resimg_1))
});

// Produce @2x images
gulp.task('resimg_2:assets', function() {
    return gulp.src(path.src.resimg_2)
        .pipe(newer(path.assets.resimg_2))
        .pipe(responsive({
            '**/*': { width: '100%', quality: quality }
        })).on('error', function (e) { console.log(e) })
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
        .pipe(gulp.dest(path.assets.resimg_2))
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
    'skins:assets',
    'resimg_1:assets',
    'resimg_2:assets',
    'sprites:assets',
    'svg:assets',
    'fonts:assets',
    'gcmd:assets',
    'clean'
]);




gulp.task('watch' , function() {
    watch([path.watch.html], function(event, cb) {
        gulp.start('html:assets');
    });
    watch([path.watch.css], function(event, cb) {
        gulp.start('css:assets');
    });
    watch([path.watch.skins], function(event, cb) {
        gulp.start('skins:assets');
    });
    watch([path.watch.js], function(event, cb) {
        gulp.start('js:assets');
    });
    watch([path.watch.allimg], function(event, cb) {
        gulp.start('resimg_1:assets');
    });
    watch([path.watch.allimg], function(event, cb) {
        gulp.start('resimg_2:assets');
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


gulp.task('browserSync',['css:assets','skins:assets' ,'js:assets'], function () {
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


gulp.task('default', ['browserSync', 'assets', 'watch']);
gulp.task('clean', ['cleanimg','cleanLess']);