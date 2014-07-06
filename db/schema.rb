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

ActiveRecord::Schema.define(version: 20140706214950) do

  create_table "companies", force: true do |t|
    t.string   "compagnia"
    t.string   "area"
    t.decimal  "provvigione",       precision: 4, scale: 2
    t.date     "aggiornamento"
    t.string   "autore"
    t.string   "canale_1"
    t.string   "canale_2"
    t.string   "interlocutore"
    t.text     "note_operative"
    t.boolean  "portale"
    t.string   "premio_minimo"
    t.string   "scheda_condizioni"
    t.string   "questionari"
    t.string   "brochure"
    t.text     "nota_informativa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
