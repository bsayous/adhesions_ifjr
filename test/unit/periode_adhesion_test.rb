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

require 'test_helper'

class PeriodeAdhesionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
