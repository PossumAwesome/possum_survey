$(function () {
  $('.add-question-button').click(function (event) {

    alert('i love tom long time');
    var thisButton = $(this);
    thisButton.parent().parent().clone(true, true).insertBefore('.actions');
    event.stopPropagation();
    event.preventDefault();
    // $('.question').last().clone(true, true).insertBefore('.actions')
  });
});
