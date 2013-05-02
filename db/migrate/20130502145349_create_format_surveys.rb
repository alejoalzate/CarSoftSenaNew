class CreateFormatSurveys < ActiveRecord::Migration
  def change
    create_table :format_surveys do |t|
      t.string :name
      t.references :user
      t.references :survey
      t.references :answer
      t.references :question

      t.timestamps
    end
    add_index :format_surveys, :user_id
    add_index :format_surveys, :survey_id
    add_index :format_surveys, :answer_id
    add_index :format_surveys, :question_id
  end
end
