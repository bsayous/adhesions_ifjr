class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      
      t.string :denomination, :null => false
      t.string :activite_principale, :null => false
      t.date :date_de_creation, :null => false
      t.string :adresse, :null => false
      t.string :code_postal, :null => false
      t.string :ville, :null => false
      t.string :telephone
      t.string :site_internet
      
      t.timestamps
    end
  end
end
