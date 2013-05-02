class CreateAdhesions < ActiveRecord::Migration
  def change
    create_table :adhesions do |t|
      t.decimal :montant
      t.boolean :droit_vote
      t.string :etat
      t.references :type_adhesion
      t.references :periode_adhesion
      t.references :adherent, :polymorphic => true

      t.timestamps
    end
    add_index :adhesions, :type_adhesion_id
    add_index :adhesions, :periode_adhesion_id
    add_index :adhesions, :adherent_id
  end
end
