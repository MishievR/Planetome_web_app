// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require particles.min
//= require_tree


window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove();
    });
}, 4000);

$('.datepicker').datepicker()


// var mapboxgl = require('mapbox-gl/dist/mapbox-gl.js');
//
// mapboxgl.accessToken = 'pk.eyJ1Ijoicm9tYW4tbSIsImEiOiJjajFtcGtocDAwMDFoMzJwZmZzZG9hdG52In0.fxcpZ-JkfjAGgDbD2vDzUw';
// var map = new mapboxgl.Map({
//   container: 'map-div',
//   style: 'mapbox://styles/mapbox/streets-v9'
// });
