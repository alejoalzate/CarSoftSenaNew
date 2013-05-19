class User < ActiveRecord::Base
  belongs_to :document
  belongs_to :rh
  belongs_to :rol
  belongs_to :type_user
  has_many :vehicle
  attr_accessible :address_residence, :email, :female, :finger_print, :identification, 
  :key, :male, :movil, :name, :phone, :surname, :document_id, :rh_id, :rol_id, :type_user_id

  def self.search(search)
		where("name like '%#{search}%' or surname like '%#{search}%' or identification like '%#{search}%'")
	end
end