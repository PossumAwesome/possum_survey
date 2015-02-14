$(function () {
  $('.add-question-button').click(function (event) {
    alert('i love tom long time');
    var thisButton = $(this);
    $(thisButton).parent().clone(true, true).insertBefore('.actions');
    event.stopPropagation();
    event.preventDefault();
  });
});
