class Vehicle < ActiveRecord::Base
  belongs_to :type_vehicle
  belongs_to :user
  attr_accessible :brand, :color, :model, :plate, :type_vehicle_id, :user_id
end
