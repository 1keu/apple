// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function() {
     $('.header-right li a').hover(
        function(){
            $(this).stop().animate({fontSize : '260%'},200);
        },
        function () {
            $(this).stop().animate({fontSize: '100%'},300);
        }
    );
});
$("#like-buttons").html("<%= j(render partial: 'like', locals: { notes: @notes, likes: @likes, like: @like}) %>")
$("#like-buttons").html("<%= j(render partial: 'like', locals: { notes: @notes, likes: @likes }) %>");
