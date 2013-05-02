# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ActiveRecord::Base
  has_many :compte_roles
  has_many :comptes, :through => :compte_roles
  
  attr_accessible :name
end
