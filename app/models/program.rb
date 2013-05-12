class Program < ActiveRecord::Base
  belongs_to :center
  attr_accessible :description, :name, :center_id
   	def self.search(search)
		where("description like '%#{search}%' or name like '%#{search}%'")
	end
end
