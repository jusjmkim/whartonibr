// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.slides.min
//= require layout
//= require posts

$(function(){ $(document).foundation(); });

$(function(){
      $("#slides").slidesjs({
        width: 940,
        height: 500,
        pagination: {
          active: true,
        },
        navigation: {
          active: false
        },
        play: {
          active: true,
          effect: 'fade',
          interval: 5000,
          auto: true,
          swap: true
        },
        effect: {
          fade: {
            speed: 5000
          }
        }
      });
    });
