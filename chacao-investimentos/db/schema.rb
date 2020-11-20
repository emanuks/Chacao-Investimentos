# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_20_204353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "account_type_id", null: false
    t.string "number"
    t.integer "agency"
    t.integer "bank_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_type_id"], name: "index_accounts_on_account_type_id"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "cep"
    t.string "city"
    t.string "state"
    t.string "neighbordhood"
    t.string "complement"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "application_fis", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "fixed_income_id", null: false
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fixed_income_id"], name: "index_application_fis_on_fixed_income_id"
    t.index ["user_id"], name: "index_application_fis_on_user_id"
  end

  create_table "direct_treasures", force: :cascade do |t|
    t.string "index"
    t.string "name"
    t.date "due_date"
    t.float "tax"
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fixed_incomes", force: :cascade do |t|
    t.string "category"
    t.string "entity"
    t.integer "due_date"
    t.time "time_limit"
    t.float "tax"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "value"
  end

  create_table "investment_funds", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.string "redemption_period"
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "ddd"
    t.string "number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.date "birth_date"
    t.string "cpf"
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "accounts", "account_types"
  add_foreign_key "accounts", "users"
  add_foreign_key "addresses", "users"
  add_foreign_key "application_fis", "fixed_incomes"
  add_foreign_key "application_fis", "users"
  add_foreign_key "phones", "users"
end
