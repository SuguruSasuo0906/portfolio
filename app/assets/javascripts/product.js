$(function () {
  // モーダルのボタンをクリックした時
  $('.product-box').on('click', function () {
    var modal = '#' + $(this).attr('data-target');
    $('#product-overlay,modal').fadeIn();
    $(modal).fadeIn();
  });

  // ×やモーダルの背景をクリックした時
  $('#product-overlay,.product-detail-close-btn').click(function () {
    $('#product-overlay').fadeOut();
    $('.fadeout').fadeOut();
  });

});