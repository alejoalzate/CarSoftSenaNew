class User < ActiveRecord::Base
  belongs_to :document
  belongs_to :rh
  belongs_to :role
  belongs_to :type
  attr_accessible :address_residence, :email, :female, :finger_print, :identification, 
  :key, :male, :movil, :name, :phone, :surname, :document_id, :rh_id, :role_id, :type_id
end
