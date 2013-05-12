class Survey < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :user_id
  
   def self.search(search)
		where("description like '%#{search}%' ")
	end
end
