class Record < ActiveRecord::Base
  belongs_to :center
  belongs_to :vehicle
  belongs_to :porter
  belongs_to :material
  belongs_to :user
  attr_accessible :amount, :date, :destination, :movements, :provenance, :time, :center_id, :vehicle_id,
  :porter_id, :porter_id, :material_id, :user_id
end
