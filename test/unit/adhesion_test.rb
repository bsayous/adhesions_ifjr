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

require 'test_helper'

class AdhesionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
