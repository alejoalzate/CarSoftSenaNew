class AreaCenter < ActiveRecord::Base
  belongs_to :center
  attr_accessible :extension, :name, :phone, :specification, :center_id
end
