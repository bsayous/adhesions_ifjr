class AddComptableToCompte < ActiveRecord::Migration
  
  change_table :comptes do |t|
    t.references :comptable, :polymorphic => true
  end

end
