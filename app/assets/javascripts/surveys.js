$(function () {
  $('.add-question-button').click(function (event) {
    event.preventDefault();
    alert('i love tom long time');
    // var thisButton = $(this);
    var buttonContainer = $('.add-button-container');
    $('.new-question-container').last().clone(true).insertBefore('.actions');
    buttonContainer.insertBefore('.actions');
  });
});
