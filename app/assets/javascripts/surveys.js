$(function () {
  var addQuestion = $('.add-question').click(function(e){
    e.stopPropagation();
    e.preventDefault();
    alert('is this shit working?');
    var thisButton = $(this);
    thisButton.parent().clone().insertBefore('.actions');
    return addQuestion;
  });
});
