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

ActiveRecord::Schema.define(version: 20200103185556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "braille_symbols", force: :cascade do |t|
    t.string "unicode"
    t.string "name"
  end

  create_table "english_brailles", force: :cascade do |t|
    t.bigint "braille_symbol_id"
    t.bigint "english_character_id"
    t.integer "position", default: 0
    t.index ["braille_symbol_id"], name: "index_english_brailles_on_braille_symbol_id"
    t.index ["english_character_id"], name: "index_english_brailles_on_english_character_id"
  end

  create_table "english_characters", force: :cascade do |t|
    t.string "english_chars"
  end

  add_foreign_key "english_brailles", "braille_symbols"
  add_foreign_key "english_brailles", "english_characters"
end
