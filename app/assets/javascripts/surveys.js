$(function () {
  $('.add-question-button').click(function (event) {
    event.preventDefault();
    // alert('i love tom long time');
    var buttonContainer = $('.add-button-container');
    var clonedItem = $('.hidden-question').clone();
    clonedItem.removeClass('hidden-question').addClass('question').insertBefore('.actions');
    changeIndex();
    buttonContainer.insertBefore('.actions');
  });

  function changeIndex () {

    var questionArray = $('.question').toArray();

    for (var i = 0; i < questionArray.length; ++i) {

      adjustAttrIndex($('.question-field', questionArray[i]), 'name', i) // change its question name
      adjustAttrIndex($('.question-field', questionArray[i]), 'id', i) // change its question name
      adjustAttrIndex($('.description-field', questionArray[i]), 'name', i) // change its question name
      adjustAttrIndex($('.description-field', questionArray[i]), 'id', i) // change its question name
      adjustAttrIndex($('.required-field', questionArray[i]), 'name', i) // change its question name
      adjustAttrIndex($('.required-field', questionArray[i]), 'id', i) // change its question name
      adjustAttrIndex($('.select-field', questionArray[i]), 'name', i) // change its question name
      adjustAttrIndex($('.select-field', questionArray[i]), 'id', i) // change its question name

    }

    function adjustAttrIndex(targetNode, attribute, index) {
    var currentAttr = targetNode.attr(attribute); // identifies attribute with which we are concerned
    targetNode.attr(attribute, currentAttr.replace( /\d+/g, index)); // changes it using super sweet regex
    }
  };


  // var questionType = $('.survey-question-type')

  // $('p.survey-question-type:contains("short answer")').append('<input type="text">');
  // $('p.survey-question-type:contains("true/false")').append('<form><input type="radio" name="truefalse" value="true"> <input type="radio" name="truefalse" value="false"></form>');
  // $('p.survey-question-type:contains("long answer")').append('<br><textarea>');



});
