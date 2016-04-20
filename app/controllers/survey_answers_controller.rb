class SurveyAnswersController < ApplicationController

  def create
    SurveyAnswer.create(survey_answer_params)

    respond_to do |format|
      format.js
    end
  end

  private

  def survey_answer_params
    params.require(:survey_answer).permit(:selected_option, :email_address) 
  end
end