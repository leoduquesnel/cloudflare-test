require 'test_helper'

class SurveyAnswersControllerTest < ActionController::TestCase
  test "should post create" do
    post :create, {format: 'js', survey_answer: {email_address: 'leo.duquesnel@gmail.com', selected_option: 'option_1'}}
    assert_response :success
  end

  test "should create a new answer" do
    count_before = SurveyAnswer.count
    post :create, {format: 'js', survey_answer: {email_address: 'leo.duquesnel@gmail.com', selected_option: 'option_1'}}
    assert count_before + 1 == SurveyAnswer.count
  end

  test "should not create two answers with the same email address" do
    post :create, {format: 'js', survey_answer: {email_address: 'leo.duquesnel@gmail.com', selected_option: 'option_1'}}
    count_before = SurveyAnswer.count
    post :create, {format: 'js', survey_answer: {email_address: 'leo.duquesnel@gmail.com', selected_option: 'option_1'}}
    assert count_before == SurveyAnswer.count
  end

end