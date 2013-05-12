class Answer < ActiveRecord::Base
	  belongs_to :question
	  attr_accessible :answer, :letter, :question_id

 	def self.search(search)
		where("answer like '%#{search}%' or letter like '%#{search}%'")
	end

end
