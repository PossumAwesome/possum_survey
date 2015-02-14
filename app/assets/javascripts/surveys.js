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

  function incrementName (input, index) {

    var questionName = $(".question-field").attr("name");
    var questionId = $(".question-field").attr("id");
    var descriptionName = $(".description-field").attr("name");
    var descriptionId = $(".description-field").attr("id");
    var requiredName = $(".required-field").attr("name");
    var requiredId = $(".required-field").attr("id");
    var selectName = $(".select-field").attr("name");
    var selectId = $(".select-field").attr("id");

    var questionResultName = questionName.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });
    var questionResultId = questionId.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });

    var descriptionResultName = descriptionName.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });
    var descriptionResultId = descriptionId.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });

    var requiredResultName = requiredName.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });
    var requiredResultId = requiredId.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });

    var selectResultName = selectName.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });
    var selectResultId = selectId.replace(/[0-9]+/, function (match) {
      return Number(match) + 1;
    });

    $('.question-field').attr('name', questionResultName);
    $('.question-field').attr('id', questionResultId);
    $('.description-field').attr('name', descriptionResultName);
    $('.description-field').attr('id', descriptionResultId);
    $('.required-field').attr('name', requiredResultName);
    $('.required-field').attr('id', requiredResultId);
    $('.select-field').attr('name', selectResultName);
    $('.select-field').attr('id', selectResultId);

    console.log(questionName, questionId, descriptionName, descriptionId, requiredName, requiredId, selectName, selectId);
  };


});
