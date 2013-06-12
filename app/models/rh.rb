class Rh < ActiveRecord::Base
  has_many :users
  attr_accessible :name
     def self.search(search)
		where("name like '%#{search}%' ")
	end
end
