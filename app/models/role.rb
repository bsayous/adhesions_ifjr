class Role < ActiveRecord::Base
  has_many :compte_roles
  has_many :comptes, :through => :compte_roles
  
  attr_accessible :name
end
