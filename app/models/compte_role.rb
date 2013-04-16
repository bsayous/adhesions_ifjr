class CompteRole < ActiveRecord::Base
  belongs_to :compte
  belongs_to :role
  # attr_accessible :title, :body
end
