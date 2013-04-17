class CreatePeriodeAdhesions < ActiveRecord::Migration
  def change
    create_table :periode_adhesions do |t|
      t.string :libelle
      t.date :date_debut
      t.date :date_fin

      t.timestamps
    end
  end
end
