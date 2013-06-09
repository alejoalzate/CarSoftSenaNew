class Program < ActiveRecord::Base
  attr_accessible :name, :code
   	def self.search(search)
		where("name like '%#{search}%' or code like '%#{search}%'")
	end
end
