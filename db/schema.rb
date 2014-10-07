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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141006133109) do

  create_table "companies", force: true do |t|
    t.string   "compagnia"
    t.string   "area"
    t.decimal  "provvigione",                    precision: 4, scale: 2
    t.date     "aggiornamento"
    t.string   "autore"
    t.string   "canale_1"
    t.string   "canale_2"
    t.string   "interlocutore"
    t.text     "note_operative"
    t.string   "premio_minimo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted"
    t.text     "credenziali"
    t.string   "portale"
    t.string   "nota_informativa_file_name"
    t.string   "nota_informativa_content_type"
    t.integer  "nota_informativa_file_size"
    t.datetime "nota_informativa_updated_at"
    t.string   "scheda_condizioni_file_name"
    t.string   "scheda_condizioni_content_type"
    t.integer  "scheda_condizioni_file_size"
    t.datetime "scheda_condizioni_updated_at"
    t.string   "questionariocomp1_file_name"
    t.string   "questionariocomp1_content_type"
    t.integer  "questionariocomp1_file_size"
    t.datetime "questionariocomp1_updated_at"
    t.string   "brochure_file_name"
    t.string   "brochure_content_type"
    t.integer  "brochure_file_size"
    t.datetime "brochure_updated_at"
    t.string   "brochurebs_file_name"
    t.string   "brochurebs_content_type"
    t.integer  "brochurebs_file_size"
    t.datetime "brochurebs_updated_at"
    t.string   "questionariocomp2_file_name"
    t.string   "questionariocomp2_content_type"
    t.integer  "questionariocomp2_file_size"
    t.datetime "questionariocomp2_updated_at"
    t.string   "questionariobs1_file_name"
    t.string   "questionariobs1_content_type"
    t.integer  "questionariobs1_file_size"
    t.datetime "questionariobs1_updated_at"
    t.string   "questionariobs2_file_name"
    t.string   "questionariobs2_content_type"
    t.integer  "questionariobs2_file_size"
    t.datetime "questionariobs2_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
