class Material < ActiveRecord::Base
  belongs_to :type_material
  belongs_to :user
  attr_accessible :description, :name, :type_material_id, :user_id
end
