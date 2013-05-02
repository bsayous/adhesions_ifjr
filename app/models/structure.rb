# == Schema Information
#
# Table name: structures
#
#  id                  :integer          not null, primary key
#  denomination        :string(255)      not null
#  activite_principale :string(255)      not null
#  adresse             :string(255)      not null
#  code_postal         :string(255)      not null
#  ville               :string(255)      not null
#  telephone           :string(255)
#  site_internet       :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  annee               :integer
#

class Structure < ActiveRecord::Base
	
	has_one :compte, :as => :comptable
  has_many :adhesions, :as => :adherent
  
	validates :denomination, :activite_principale, :annee, :adresse, :code_postal, :ville, :presence => true

  attr_accessible :denomination, :activite_principale, :annee, :adresse, :code_postal, :ville, :telephone, :site_internet

  def to_s
    denomination
  end
  
  def individu?
    false
  end
  
  def structure?
    true
  end


end
