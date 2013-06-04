class Porter < ActiveRecord::Base
  belongs_to :turn
  attr_accessible  :name, :surname, :address, :phone,  :turn_id, :avatar

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  
  def self.search(search)
		where("name like '%#{search}%' or surname like '%#{search}%' or address like '%#{search}%' or phone like '%#{search}%'")
	end
	
end
