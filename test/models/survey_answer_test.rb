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
  # test "the truth" do
  #   assert true
  # end
end
