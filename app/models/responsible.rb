class Responsible < ActiveRecord::Base
  belongs_to :document
  has_many :area_centers
  has_many :users
  attr_accessible :extension, :genre, :identification, :name, :phone, :surname, :document_id, :area_center_id

  def self.responsible_ubicacion(responsible,area_center)
  	@ubicacion = responsible + " | " + area_center.name  + " | " +   area_center.center.name
  end
end
