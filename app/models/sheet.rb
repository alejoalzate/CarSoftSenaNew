class Sheet < ActiveRecord::Base
  belongs_to :program
  attr_accessible :code, :program_id
   def self.search(search)
		where("code like '%#{search}%' ")
	end
end
