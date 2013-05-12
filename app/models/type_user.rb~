class TypeUser < ActiveRecord::Base
  attr_accessible :acronym, :description, :name
  	def self.search(search)
		where("acronym like '%#{search}%' or description like '%#{search}%' or name like '%#{search}%'")
	end
end
