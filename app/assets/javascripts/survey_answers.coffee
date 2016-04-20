window.bindSurveyAnswerOptions = () ->
  $('#new_survey_answer_step_one_modal .options .option').click () ->
    $('#new_survey_answer_step_one_modal .options .option').removeClass('selected')
    $(this).addClass('selected')
    $("#survey_answer_selected_option").val($(this).data('value'))
    $('#new_survey_answer_step_one_modal .modal-footer button').removeClass('disabled')

window.bindSurveyAnswerNextButton = () ->
  $('#new_survey_answer_step_one_modal .modal-footer button').click (e) ->
    if $("#survey_answer_selected_option").val().length > 0
      $('#new_survey_answer_step_one_modal').modal('hide')
      $('#new_survey_answer_step_two_modal').modal()

window.bindSurveyAnswerSubmitButton = () ->
  $('#new_survey_answer_step_two_modal .modal-footer button').click (e) ->
    email_address = $("#email_address").val()
    if email_address.length > 0
      $("#survey_answer_email_address").val(email_address)
      window.sendSurveyAnswer()

window.bindSurveyAnswerEmail = () ->
  $("#email_address").on 'keydown change', (e) ->
    if $("#email_address").val().length > 0
      $('#new_survey_answer_step_two_modal .modal-footer button').removeClass('disabled')
    else
      $('#new_survey_answer_step_two_modal .modal-footer button').addClass('disabled')

window.sendSurveyAnswer = () ->
  if $("form#new_survey_answer").length > 0
    $.post '/survey_answers', $("form#new_survey_answer").serialize()
