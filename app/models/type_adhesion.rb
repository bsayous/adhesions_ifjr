class TypeAdhesion < ActiveRecord::Base
  TYPE_COMPTABLES = ["Structure", "Individu"]
  validates :type_comptable, :inclusion => { :in => TYPE_COMPTABLES }

  
  belongs_to :periode_adhesion
  attr_accessible :droit_vote, :libelle, :montant, :type_comptable
end
