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

require 'test_helper'

class StructureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
