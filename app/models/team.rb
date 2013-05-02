class Team < ActiveRecord::Base
  belongs_to :porter
  belongs_to :user
  attr_accessible :charger, :color, :mouse, :name, :serial, :type_team, :porter_id, :user_id
end
