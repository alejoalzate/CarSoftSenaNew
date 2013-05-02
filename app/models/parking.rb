class Parking < ActiveRecord::Base
  belongs_to :area
  belongs_to :vehicle
  attr_accessible :description, :location, :space_avaible, :area_id, :vehicle_id
end
