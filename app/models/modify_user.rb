class ModifyUser < ActiveRecord::Base
  belongs_to :user
  attr_accessible :change, :description, :user_id
end
