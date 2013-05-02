# == Schema Information
#
# Table name: compte_roles
#
#  id         :integer          not null, primary key
#  compte_id  :integer
#  role_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CompteRole < ActiveRecord::Base
  belongs_to :compte
  belongs_to :role
  # attr_accessible :title, :body
end
