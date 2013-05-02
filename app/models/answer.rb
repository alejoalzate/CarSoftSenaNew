class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :answer, :letter, :question_id
end
