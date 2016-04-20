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

class SurveyAnswer < ActiveRecord::Base
  validates_presence_of :email_address, :selected_option

  validates :selected_option, inclusion: { in: %w(option_1 option_2 option_3) }
  validates_uniqueness_of :email_address
end
