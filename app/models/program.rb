class Program < ActiveRecord::Base
  attr_accessible :name, :code, :user_id
  belongs_to :user
   	def self.search(search)
		where("name like '%#{search}%' or code like '%#{search}%'")
	end
end
