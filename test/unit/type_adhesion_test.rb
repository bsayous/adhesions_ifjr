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

require 'test_helper'

class TypeAdhesionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
