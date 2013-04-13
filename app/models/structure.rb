class Structure < ActiveRecord::Base
	
	has_one :compte, :as => :comptable

	validates :denomination, :activite_principale, :annee, :adresse, :code_postal, :ville, :presence => true

  attr_accessible :denomination, :activite_principale, :annee, :adresse, :code_postal, :ville, :telephone, :site_internet

end
