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
    var leftLinks = document.getElementsByClassName("nav-link-left");
    var rightLinks = document.getElementsByClassName("nav-link-right open");
    if (rightLinks.length > 0) {
        var rightLinksLength = rightLinks.length;
        while (rightLinksLength--) {
            rightLinks[rightLinksLength].className = "nav-link-right"
        }
    }
    if (leftLinks[0].className === "nav-link-left") {
        var leftLinksLength = leftLinks.length;
        while (leftLinksLength--) {
            leftLinks[leftLinksLength].className = "nav-link-left open";
        } 
    } else {
        var leftLinksLength = leftLinks.length;
        while (leftLinksLength--) {
            leftLinks[leftLinksLength].className = "nav-link-left";
        }
    }
}


function toggleRight() {
    var rightLinks = document.getElementsByClassName("nav-link-right");
    var leftLinks = document.getElementsByClassName("nav-link-left open");
    if (leftLinks.length > 0) {
        var leftLinksLength = leftLinks.length;
        while (leftLinksLength--) {
            leftLinks[leftLinksLength].className = "nav-link-left"
        }
    }
    if (rightLinks[0].className === "nav-link-right") {
        var rightLinksLength = rightLinks.length;
        while (rightLinksLength--) {
            rightLinks[rightLinksLength].className = "nav-link-right open";
        } 
    } else {
        var rightLinksLength = rightLinks.length;
        while (rightLinksLength--) {
            rightLinks[rightLinksLength].className = "nav-link-right";
        }
    }
}