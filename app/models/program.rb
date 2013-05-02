class Program < ActiveRecord::Base
  belongs_to :center
  attr_accessible :description, :name, :center_id
end
