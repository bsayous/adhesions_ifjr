# == Schema Information
#
# Table name: adhesions
#
#  id                  :integer          not null, primary key
#  montant             :decimal(, )
#  droit_vote          :boolean
#  etat                :string(255)
#  type_adhesion_id    :integer
#  periode_adhesion_id :integer
#  adherent_id         :integer
#  adherent_type       :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Adhesion < ActiveRecord::Base
  
  
  belongs_to :type_adhesion
  belongs_to :periode_adhesion
  belongs_to :adherent, :polymorphic => true
  
  scope :individus, where(:adherent_type => TypeAdhesion::TYPE_INDIVIDU) 
  scope :structures, where(:adherent_type => TypeAdhesion::TYPE_STRUCTURE)

  
  attr_accessible :droit_vote, :etat, :montant, :type_adhesion_id, :periode_adhesion_id
  
end
