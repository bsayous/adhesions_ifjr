class AddAnneeCreationToStructure < ActiveRecord::Migration
  def change
    add_column :structures, :annee, :integer
    remove_column :structures, :date_de_creation
  end
end
