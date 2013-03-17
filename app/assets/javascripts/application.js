// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

// User Echo Code Starts HERE
var _ues = {
  host:'fundrealty.userecho.com',
  forum:'18408',
  lang:'en',
  tab_corner_radius:5,
  tab_font_size:20,
  tab_image_hash:'ZmVlZGJhY2s%3D',
  tab_chat_hash:'Y2hhdA%3D%3D',
  tab_alignment:'left',
  tab_text_color:'#FFFFFF',
  tab_text_shadow_color:'#00000055',
  tab_bg_color:'#57A957',
  tab_hover_color:'#F45C5c'
};

(function() {
  var _ue = document.createElement('script'); _ue.type = 'text/javascript'; _ue.async = true;
  _ue.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.userecho.com/js/widget-1.4.gz.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(_ue, s);
})();
// User Echo Code Ends HERE

// Google Analytics Code Starts HERE
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-39360247-1']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
// Google Analytics Code Ends HERE
