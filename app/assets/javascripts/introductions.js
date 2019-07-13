$(function () {

  $('#about').hide();
  $('#skill').hide();
  $('#product').hide();
  $('#contact').hide();

  $('.top-nav').on('click', function () {
    $('#top').fadeIn(1000);
    $('#about').hide();
    $('#skill').hide();
    $('#product').hide();
    $('#contact').hide();
  });

  $('.about-nav').on('click', function () {
    $('#top').hide();
    $('#about').fadeIn(1000);
    $('#skill').hide();
    $('#product').hide();
    $('#contact').hide();
  });

  $('.skill-nav').on('click', function () {
    $('#top').hide();
    $('#about').hide();
    $('#skill').fadeIn(1000);
    $('#product').hide();
    $('#contact').hide();
  });

  $('.product-nav').on('click', function () {
    $('#top').hide();
    $('#about').hide();
    $('#skill').hide();
    $('#product').fadeIn(1000);
    $('#contact').hide();
  });

  $('.contact-nav').on('click', function () {
    $('#top').hide();
    $('#about').hide();
    $('#skill').hide();
    $('#product').hide();
    $('#contact').fadeIn(1000);
  });

  $(function () {
    $('#toggle-btn').on('click', function () {
      $('body').toggleClass('open');
      if ($('#nav-overlay').css('display') == 'block') {
        $('#nav-overlay').fadeOut();
      } else {
        $('#nav-overlay').fadeIn();
      }
    });
  });

});