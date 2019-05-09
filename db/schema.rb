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

ActiveRecord::Schema.define(version: 20190413121320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "domain"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", force: :cascade do |t|
    t.integer "user_id"
    t.integer "transaction_id"
    t.integer "client_id"
    t.integer "value"
    t.boolean "expired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reward_rules", force: :cascade do |t|
    t.integer "client_id"
    t.integer "reward_id"
    t.string "rule_type"
    t.integer "rule_value"
    t.integer "duration"
    t.string "duration_unit"
    t.boolean "recurring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rewards", force: :cascade do |t|
    t.string "name"
    t.integer "client_id"
    t.integer "reward_type"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "client_id"
    t.integer "user_id"
    t.decimal "amount"
    t.string "currency"
    t.boolean "domestic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_rewards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "client_id"
    t.integer "reward_id"
    t.boolean "expired"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.integer "client_id"
    t.integer "tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
