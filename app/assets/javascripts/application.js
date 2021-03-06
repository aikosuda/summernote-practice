// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets  
//= require summernote/summernote-bs4.min
//= require summernote-init
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$.summernote.options.lang = "ja-JP";

document.addEventListener("turbolinks:load", function() {


$(function() {
  $('.menu-trigger').on('click', function(event) {
    $(this).toggleClass('active');
    $('.nav-wrap').fadeToggle();
    event.preventDefault();
  });
});

$(function() {
  $('.tag-trigger').on('click', function(event) {
    $(this).toggleClass('active');
    $('.all-tags').fadeToggle();
    event.preventDefault();
  });
});

})