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

ActiveRecord::Schema.define(version: 20150617203923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string  "code"
    t.string  "name"
    t.text    "description"
    t.text    "shortDescription"
    t.float   "rating"
    t.integer "num"
  end

  create_table "boxes", force: :cascade do |t|
    t.string   "name"
    t.integer  "size"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string  "code"
    t.string  "name"
    t.integer "spritenum"
    t.integer "flingBasePower"
    t.integer "gen"
    t.text    "description"
  end

  create_table "moves", force: :cascade do |t|
    t.string  "code"
    t.integer "accuracy"
    t.integer "basePower"
    t.string  "category"
    t.text    "description"
    t.text    "shortDescription"
    t.string  "name"
    t.integer "pp"
    t.integer "priority"
    t.string  "type1"
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.text     "obs"
    t.integer  "number"
    t.integer  "pkm1_id"
    t.integer  "pkm2_id"
    t.integer  "pkm3_id"
    t.integer  "pkm4_id"
    t.integer  "pkm5_id"
    t.integer  "pkm6_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "pokemon_defaults", force: :cascade do |t|
    t.integer "num"
    t.string  "code"
    t.string  "name"
    t.string  "type1"
    t.string  "type2"
    t.string  "baseSpecies"
    t.string  "forme"
    t.float   "M"
    t.float   "F"
    t.integer "hp"
    t.integer "atk"
    t.integer "def"
    t.integer "spa"
    t.integer "spd"
    t.integer "spe"
    t.string  "ability1"
    t.string  "ability2"
    t.string  "abilityH"
    t.float   "heightm"
    t.float   "weightkg"
    t.string  "color"
    t.string  "prevo"
    t.string  "evos"
    t.string  "eggGroup1"
    t.string  "eggGroup2"
    t.integer "evoLevel"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.boolean  "shiny"
    t.string   "pokeball"
    t.string   "nature"
    t.integer  "iv_atk"
    t.integer  "iv_spatk"
    t.integer  "iv_def"
    t.integer  "iv_spdef"
    t.integer  "iv_spe"
    t.integer  "iv_hp"
    t.integer  "ev_atk"
    t.integer  "ev_spatk"
    t.integer  "ev_def"
    t.integer  "ev_spdef"
    t.integer  "ev_spe"
    t.integer  "ev_hp"
    t.integer  "move1_id"
    t.integer  "move2_id"
    t.integer  "move3_id"
    t.integer  "move4_id"
    t.integer  "box_position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "box_id"
    t.integer  "item_id"
    t.integer  "ability_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
