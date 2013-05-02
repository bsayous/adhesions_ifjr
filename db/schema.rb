# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130423205253) do

  create_table "adhesions", :force => true do |t|
    t.decimal  "montant"
    t.boolean  "droit_vote"
    t.string   "etat"
    t.integer  "type_adhesion_id"
    t.integer  "periode_adhesion_id"
    t.integer  "adherent_id"
    t.string   "adherent_type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "adhesions", ["adherent_id"], :name => "index_adhesions_on_adherent_id"
  add_index "adhesions", ["periode_adhesion_id"], :name => "index_adhesions_on_periode_adhesion_id"
  add_index "adhesions", ["type_adhesion_id"], :name => "index_adhesions_on_type_adhesion_id"

  create_table "compte_roles", :force => true do |t|
    t.integer  "compte_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "compte_roles", ["compte_id", "role_id"], :name => "index_compte_roles_on_compte_id_and_role_id"

  create_table "comptes", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "comptable_id"
    t.string   "comptable_type"
  end

  add_index "comptes", ["email"], :name => "index_comptes_on_email", :unique => true
  add_index "comptes", ["reset_password_token"], :name => "index_comptes_on_reset_password_token", :unique => true

  create_table "individus", :force => true do |t|
    t.string   "nom",                      :null => false
    t.string   "prenom",                   :null => false
    t.string   "adresse",                  :null => false
    t.string   "code_postal",              :null => false
    t.string   "ville",                    :null => false
    t.string   "telephone"
    t.string   "site_internet"
    t.string   "activite_principale",      :null => false
    t.integer  "annee_naissance",          :null => false
    t.string   "institut_de_rattachement"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "periode_adhesions", :force => true do |t|
    t.string   "libelle"
    t.date     "date_debut"
    t.date     "date_fin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "structures", :force => true do |t|
    t.string   "denomination",        :null => false
    t.string   "activite_principale", :null => false
    t.string   "adresse",             :null => false
    t.string   "code_postal",         :null => false
    t.string   "ville",               :null => false
    t.string   "telephone"
    t.string   "site_internet"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "annee"
  end

  create_table "type_adhesions", :force => true do |t|
    t.string   "libelle"
    t.string   "type_comptable"
    t.decimal  "montant"
    t.boolean  "droit_vote"
    t.integer  "periode_adhesion_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "type_adhesions", ["periode_adhesion_id"], :name => "index_type_adhesions_on_periode_adhesion_id"

end
