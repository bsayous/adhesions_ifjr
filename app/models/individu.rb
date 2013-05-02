# == Schema Information
#
# Table name: individus
#
#  id                       :integer          not null, primary key
#  nom                      :string(255)      not null
#  prenom                   :string(255)      not null
#  adresse                  :string(255)      not null
#  code_postal              :string(255)      not null
#  ville                    :string(255)      not null
#  telephone                :string(255)
#  site_internet            :string(255)
#  activite_principale      :string(255)      not null
#  annee_naissance          :integer          not null
#  institut_de_rattachement :string(255)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class Individu < ActiveRecord::Base

	has_one :compte, :as => :comptable
	has_many :adhesions, :as => :adherent
	
	validates :nom, :prenom, :adresse, :code_postal, :ville, :activite_principale, :annee_naissance, :institut_de_rattachement, :presence => true

	attr_accessible :nom, :prenom, :adresse, :code_postal, :ville, :telephone, :site_internet, :activite_principale, :annee_naissance, :institut_de_rattachement
	
	def to_s
		nom + " " + prenom
	end

	def individu?
		true
	end
	
	def structure?
		false
	end
	
end
