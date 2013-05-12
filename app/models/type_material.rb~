class TypeMaterial < ActiveRecord::Base
  attr_accessible :description, :name
  
  def self.search(search)
		where("description like '%#{search}%' or name like '%#{search}%'")
	end
end
