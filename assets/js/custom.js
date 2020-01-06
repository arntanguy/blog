// Scroll Top
$(window).scroll(function() {
  if ($(this).scrollTop() > $(window).height()) {
    $('.top').addClass("up");
    $('.top').click(function() {
      $('html, body').stop().animate({scrollTop: 0}, 'slow', 'swing');
      console.log("TOP");
    });
  } else {
    $('.top').removeClass("up");
  }
});
