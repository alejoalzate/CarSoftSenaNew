class Responsible < ActiveRecord::Base
  belongs_to :document
  belongs_to :area_center
  attr_accessible :extension, :genre, :identification, :name, :phone, :surname, :document_id, :area_center_id
end
