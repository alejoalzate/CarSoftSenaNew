class User < ActiveRecord::Base

  authenticates_with_sorcery!
  
  has_many :assignments
  has_many :roles, :through => :assignments
  has_many :vehicle
  has_many :team
  has_many :material
  has_many :modify_user
  has_many :suggestion

  
  attr_accessible :email, :password, :password_confirmation
  attr_accessible :address_residence, :gender
  attr_accessible :identification, :movil, :name, :phone
  attr_accessible :document_id, :rh_id, :role_ids, :type_user_id, :role_id


  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :name, :phone
  validates_uniqueness_of :email

 
  belongs_to :document
  belongs_to :rh
  belongs_to :role_id
  belongs_to :type_user
  

  def self.search(search)
		where("name like '%#{search}%' or identification like '%#{search}%' or address_residence like '%#{search}%'
    or phone like '%#{search}%' or movil like '%#{search}%' ")
	end

  def has_role?(role_sym)
       roles.any? { |r| r.name.underscore.to_sym == role_sym }
    end

end

