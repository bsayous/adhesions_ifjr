class CreateIndividus < ActiveRecord::Migration
  def change
    create_table :individus do |t|
      t.string nom, :null => false
      t.string prenom, :null => false
      t.string adresse, :null => false
      t.string code_postal, :null => false
      t.string ville, :null => false
      t.string telephone
      t.string site_internet
      t.string activite_principale, :null => false
      t.integer annee_naissance, :null => false
      t.string institut_de_rattachement
      t.timestamps
    end
  end
end
