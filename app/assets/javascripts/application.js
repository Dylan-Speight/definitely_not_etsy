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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function toggleLeft() {
    var x = document.getElementsByClassName("nav-toggle-left");
    var y = document.getElementsByClassName("nav-link-left");
    if (x[0].className === "nav-toggle-left") {
        x[0].className = "nav-toggle-left open"
        var yLength = y.length;
        while (yLength--) {
            y[yLength].className = "nav-link-left open";
        } 
    } else {
        x[0].className = "nav-toggle-left";
        var yLength = y.length;
        while (yLength --) {
            y[yLength].className = "nav-link-left";
        }
    }
}

function toggleRight() {
    var x = document.getElementsByClassName("nav-toggle-right");
    var y = document.getElementsByClassName("nav-link-right");
    if (x[0].className === "nav-toggle-right") {
        x[0].className = "nav-toggle-right open"
        var yLength = y.length;
        while (yLength--) {
            y[yLength].className = "nav-link-right open";
        } 
    } else {
        x[0].className = "nav-toggle-right";
        var yLength = y.length;
        while (yLength --) {
            y[yLength].className = "nav-link-right";
        }
    }
}