$(document).ready(function() {
  $('#show-bio').click(function(event) {
    event.preventDefault();
    $(this).hide();
    $('.field#bio').show();
  })
});