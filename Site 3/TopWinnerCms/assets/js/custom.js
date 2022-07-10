$(document).ready(function () {
    "use strict";
    /**
     * loading page
     * smooth scroll
     * animate slider
     * video
     * scroll top
     * wow plugin -> http://mynameismatthieu.com/WOW/
     * mixItUp plugin -> https://www.kunkalabs.com/mixitup/
     * magnificPopup plugin ->http://dimsemenov.com/plugins/magnific-popup/
     * counter plugin ->https://github.com/bfintal/Counter-Up
     * progress-circle plugin ->https://github.com/pguso/jquery-plugin-circliful
     **/
$('ul.nav li.dropdown').hover(function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
}, function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
});
    //navbar-fixed
    var resize = $(".navbar-fixed-top");
    $(window).on("scroll",(function () {
        $(this).scrollTop() >= 100 ? resize.addClass("resize") : resize.removeClass("resize");
        if ($(".navbar-fixed-top").hasClass('resize')) {
            $("#imgLogo").attr("src", "/assets/images/topgreen.png");
           // $("#imgLogo").css("height", '50px');
           // $("#imgLogo").css("width", '60px');
        }
        else {
            $("#imgLogo").attr("src", "/assets/images/TopWinner-white.png");
            $("#imgLogo").css("height", '');
            $("#imgLogo").css("width", '');
        }
    }));


        //loading page
    $(window).on("load",(function () {
        $(".loading-page .loader-inner ").fadeOut(1000, function () {
            $(this).parent().fadeOut(1000, function () {
                (this).remove();
             $("body").css("overflow-y", "auto");
            });
        });
    }));

//scroll top      
    var ScrollButton = $("#scroll-top");
    $(window).scroll(function () {
        $(this).scrollTop() >= 900 ? ScrollButton.show() : ScrollButton.hide();
    });
    ScrollButton.on("click",(function () {
        $("html,body").animate({scrollTop: 0}, 1000);

    }));

    //main slider
              $('.fadeOut').owlCarousel({
                rtl:true,
                items: 1,
                animateOut: 'fadeOut',
                loop: true,
                margin: 0,
              });
                $('.councillor').owlCarousel({
                rtl:true,
                items: 1,
                animateOut: 'fadeOut',
                loop: true,
                margin: 0,
              });
                $('.country').owlCarousel({
                rtl:true,
                items: 3,
                animateOut: 'fadeOut',
                loop: true,
                margin: 0,
              });
        });

