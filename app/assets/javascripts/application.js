//= require jquery
//= require turbolinks
//= require materialize-sprockets
//= require materialize/extras/nouislider
$(document).ready(function(){
 $(".button-collapse").sideNav();
 $('.collapsible').collapsible();
 $('.carousel').carousel();
 $('#mainmenu').pushpin({
   top: 150,
   bottom: 100000,
   offset: 0
 })
});
