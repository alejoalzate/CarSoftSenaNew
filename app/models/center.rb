class Center < ActiveRecord::Base
  belongs_to :code
  attr_accessible :name, :code_id
end
