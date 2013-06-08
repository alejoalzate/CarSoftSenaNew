class Role < ActiveRecord::Base
    has_many :assignments
    has_many :users, :through => :assignments
  attr_accessible :acronym, :name
  	def self.search(search)
		where("acronym like '%#{search}%' or name like '%#{search}%'")
	end
end
