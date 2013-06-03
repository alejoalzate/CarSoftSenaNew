class AreaCenter < ActiveRecord::Base
  belongs_to :center
  has_many :responsibles
  attr_accessible :extension, :name, :phone, :specification, :center_id
end
