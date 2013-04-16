class CreateCompteRoles < ActiveRecord::Migration
  def change
    create_table :compte_roles do |t|
      t.references :compte
      t.references :role

      t.timestamps
    end
    add_index :compte_roles, [ :compte_id, :role_id ]
  end
end
