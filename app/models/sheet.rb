class Sheet < ActiveRecord::Base
  belongs_to :program
  attr_accessible :code, :program_id
end
