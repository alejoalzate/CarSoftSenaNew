class ModifyUser < ActiveRecord::Base
  belongs_to :user
  attr_accessible :change, :description, :user_id
  
  def self.search(search)
		where("change like '%#{search}%' or description like '%#{search}%'")
	end
end
