class Area < ActiveRecord::Base
  attr_accessible :description, :name
  
  def self.search(search)
		where("name like '%#{search}%' or description like '%#{search}%'")
	end
end
