class Authorization < ActiveRecord::Base
  belongs_to :document
  belongs_to :user
  attr_accessible :acceptance, :avatar, :charge, :course_elements, :date, :genre, :identification, :item_description, :loan, :name, :others,
 :phone, :repair, :sample_property, :seminar, :surname, :document_id, :user_id
end
