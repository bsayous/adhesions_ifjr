class Individu < ActiveRecord::Base

	has_one :compte, :as => :comptable

	validates :nom, :prenom, :adresse, :code_postal, :ville, :activite_principale, :annee_naissance, :institut_de_rattachement, :presence => true


	attr_accessible :nom, :prenom, :adresse, :code_postal, :ville, :telephone, :site_internet, :activite_principale, :annee_naissance, :institut_de_rattachement
	
end
