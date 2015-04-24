
$(function () {
    $(window).on("load resize", function () {
        $(".fill-screen").css("height", window.innerHeight);
    });

    //add Bootstrap's scrollspy
    $('body').scrollspy({
        target: '.navbar'
    });

    // smooth scrolling
    var $root = $('html, body');
    $('a').click(function () {
        $root.animate({
            scrollTop: $($(this).attr('href')).offset().top - 115
        }, 1500);
        return false;
    });

});

var supports = (function () {
    var d = document.documentElement,
        c = "ontouchstart" in window || navigator.msMaxTouchPoints;
    if (c) {
        d.className += " touch";
        return {
            touch: true
        }
    } else {
        d.className += " no-touch";
        return {
            touch: false
        }
    }
})();