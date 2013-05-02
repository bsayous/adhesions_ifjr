# == Schema Information
#
# Table name: periode_adhesions
#
#  id         :integer          not null, primary key
#  libelle    :string(255)
#  date_debut :date
#  date_fin   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PeriodeAdhesion < ActiveRecord::Base
  attr_accessible :date_debut, :date_fin, :libelle
  
  def to_s
    libelle
  end

end
