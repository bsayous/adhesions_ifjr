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

require 'test_helper'

class IndividuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
