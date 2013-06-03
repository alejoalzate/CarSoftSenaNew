class Center < ActiveRecord::Base
  belongs_to :code
  has_many :area_centers
  attr_accessible :name, :code_id
  
  def self.search(search)
		where("name like '%#{search}%' ")
	end
end
