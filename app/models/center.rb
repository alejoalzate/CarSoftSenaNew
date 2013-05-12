class Center < ActiveRecord::Base
  belongs_to :code
  attr_accessible :name, :code_id
  
  def self.search(search)
		where("name like '%#{search}%' ")
	end
end
