class Question < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :letter, :score, :category_id
  
   	def self.search(search)
		where("description like '%#{search}%'")
	end
end
