class CreateTypeAdhesions < ActiveRecord::Migration
  def change
    create_table :type_adhesions do |t|
      t.string :libelle
      t.string :type_comptable
      t.decimal :montant
      t.boolean :droit_vote
      t.references :periode_adhesion

      t.timestamps
    end
    add_index :type_adhesions, :periode_adhesion_id
  end
end
