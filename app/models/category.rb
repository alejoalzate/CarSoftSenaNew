class Category < ActiveRecord::Base
  attr_accessible :name
  def self.search(search)
		where("name like '%#{search}%' ")
	end
end
