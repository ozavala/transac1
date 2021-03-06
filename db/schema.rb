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

ActiveRecord::Schema.define(version: 2019_02_04_161353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string "acc_type_code"
    t.string "classification"
  end

  create_table "accounting_periods", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.bigint "period_type_id"
    t.bigint "party_id"
    t.index ["party_id"], name: "index_accounting_periods_on_party_id"
    t.index ["period_type_id"], name: "index_accounting_periods_on_period_type_id"
  end

  create_table "gl_accounts", force: :cascade do |t|
    t.string "acc_code"
    t.string "acc_parent_code"
    t.string "name"
    t.string "description"
    t.bigint "account_type_id"
    t.index ["account_type_id"], name: "index_gl_accounts_on_account_type_id"
  end

  create_table "gl_transactions", force: :cascade do |t|
    t.date "transaction_date"
    t.date "entry_date"
    t.string "description"
    t.bigint "transaction_type_id"
    t.integer "to_party"
    t.integer "from_party"
    t.index ["transaction_type_id"], name: "index_gl_transactions_on_transaction_type_id"
  end

  create_table "organization_accounts", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.bigint "party_id"
    t.bigint "gl_account_id"
    t.bigint "accounting_period_id"
    t.index ["accounting_period_id"], name: "index_organization_accounts_on_accounting_period_id"
    t.index ["gl_account_id"], name: "index_organization_accounts_on_gl_account_id"
    t.index ["party_id"], name: "index_organization_accounts_on_party_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "party_type"
    t.string "name"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "period_types", force: :cascade do |t|
    t.string "period_type_code"
    t.string "description"
  end

  create_table "transaction_details", force: :cascade do |t|
    t.integer "detail_seq"
    t.decimal "amount", precision: 20, scale: 2
    t.string "dbcr_flag"
    t.bigint "party_id"
    t.integer "parent_detail_seq"
    t.bigint "gl_account_id"
    t.bigint "gl_transaction_id"
    t.index ["gl_account_id"], name: "index_transaction_details_on_gl_account_id"
    t.index ["gl_transaction_id"], name: "index_transaction_details_on_gl_transaction_id"
    t.index ["party_id"], name: "index_transaction_details_on_party_id"
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string "transaction_type_code"
    t.string "description"
  end

  add_foreign_key "accounting_periods", "parties"
  add_foreign_key "accounting_periods", "period_types"
  add_foreign_key "gl_accounts", "account_types"
  add_foreign_key "gl_transactions", "parties", column: "from_party"
  add_foreign_key "gl_transactions", "parties", column: "to_party"
  add_foreign_key "gl_transactions", "transaction_types"
  add_foreign_key "organization_accounts", "accounting_periods"
  add_foreign_key "organization_accounts", "gl_accounts"
  add_foreign_key "organization_accounts", "parties"
  add_foreign_key "transaction_details", "gl_accounts"
  add_foreign_key "transaction_details", "gl_transactions"
  add_foreign_key "transaction_details", "parties"
end
