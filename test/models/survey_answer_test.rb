# == Schema Information
#
# Table name: survey_answers
#
#  id              :integer          not null, primary key
#  email_address   :string
#  selected_option :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SurveyAnswerTest < ActiveSupport::TestCase
  test "email_address and selected_option are required" do
    assert_not SurveyAnswer.new.valid?
    assert SurveyAnswer.new(email_address: 'leo.duquesnel@gmail.com', selected_option: 'option_1').valid?
  end
end
