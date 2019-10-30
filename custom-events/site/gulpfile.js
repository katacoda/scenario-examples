const gulp = require('gulp');
const browserSync = require('browser-sync');
const fileinclude = require('gulp-file-include');
const sass = require('gulp-sass');
const server = browserSync.create();
const request = require('request');
const fs = require('fs')
var SERVICE_URL='https://environment-events.katacoda.com';

const paths = {
  html: {
    src: [ '**/*.html', '!node_modules', '!node_modules/**', '!dist/**'],
    dest: 'dist/'
  },
  sass: {
    src: ['*.scss'],
    dest: 'dist/'
  }
};

function html() {
  return gulp.src(paths.html.src)
    .pipe(gulp.dest(paths.html.dest));
}

function reload(done) {
  server.reload();
  done();
}

function fileInclude() {
  return gulp.src(['server/template.html'])
    .pipe(fileinclude({
      prefix: '@@',
      basepath: './'
    }))
    .pipe(gulp.dest(paths.html.dest + 'server'));
}

function style () {
  return gulp.src('./*.scss')
    .pipe(sass())
    .pipe(gulp.dest('./dist/css'));
}

function serve(done) {
  server.init({
    injectChanges: true,
    notify: false,
    server: {
      baseDir: './dist'
    },
    index: 'server/template.html'
  });
  done();
}


function callEventService(cb) {
  var s = fs.readFileSync('/tmp/socket','utf8')
  if (s){
    console.log ('Retrieved socket', s);
    const headers = {
      'Content-Type': 'application/x-www-form-urlencoded'
    }

    const options = {
      url: SERVICE_URL,
      method: 'POST',
      headers: headers  }

    request.post(options.url, {
      form: {
        message: 'reload-finished',
        socket: s
      }
    }, function(err, res) {
        if(err){
          console.log(err, res);
        }
        cb();
    });
  }
}

const watch = () => gulp.watch(paths.html.src, gulp.series(html, fileInclude, reload, callEventService));
const sassWatch = () => gulp.watch(paths.sass.src, gulp.series(style, reload));

const dev = gulp.series(html, fileInclude, style, serve, gulp.parallel(sassWatch, watch));
exports.default = dev;
