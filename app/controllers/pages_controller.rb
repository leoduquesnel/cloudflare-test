class PagesController < ApplicationController
  def home
    @survey_answer = SurveyAnswer.new 
  end
end
