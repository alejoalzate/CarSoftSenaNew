class Question < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :letter, :score, :category_id
end
