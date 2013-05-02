# == Schema Information
#
# Table name: type_adhesions
#
#  id                  :integer          not null, primary key
#  libelle             :string(255)
#  type_comptable      :string(255)
#  montant             :decimal(, )
#  droit_vote          :boolean
#  periode_adhesion_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class TypeAdhesion < ActiveRecord::Base
  TYPE_STRUCTURE = "Structure"
  TYPE_INDIVIDU = "Individu"
  TYPE_COMPTABLES = [TYPE_STRUCTURE, TYPE_INDIVIDU]
  validates :type_comptable, :inclusion => { :in => TYPE_COMPTABLES }

  
  belongs_to :periode_adhesion
  attr_accessible :droit_vote, :libelle, :montant, :type_comptable, :periode_adhesion_id
  
  def to_s
    libelle
  end
end
