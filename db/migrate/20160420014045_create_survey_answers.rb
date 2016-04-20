class CreateSurveyAnswers < ActiveRecord::Migration
  def change
    create_table :survey_answers do |t|
      t.string :email_address
      t.string :selected_option

      t.timestamps null: false
    end
  end
end
