class User < ActiveRecord::Base
  belongs_to :document
  belongs_to :rh
  belongs_to :role
  belongs_to :type
  has_many :vehicle
  attr_accessible :address_residence, :email, :female, :finger_print, :identification, 
  :key, :male, :movil, :name, :phone, :surname, :document_id, :rh_id, :role_id, :type_id

  def self.search(search)
		where("name like '%#{search}%' or surname like '%#{search}%' or identification like '%#{search}%'")
	end
end