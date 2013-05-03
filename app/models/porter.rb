class Porter < ActiveRecord::Base
  belongs_to :turn
  attr_accessible  :name, :surname, :address, :phone,  :turn_id
end
