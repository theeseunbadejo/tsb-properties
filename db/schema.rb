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

ActiveRecord::Schema.define(version: 2020_04_20_173542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "accounts", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "url"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "company"
    t.string "telephone"
    t.boolean "admin", default: false
    t.text "details"
    t.string "cover_image"
    t.datetime "password_changed_at"
    t.string "unique_session_id"
    t.datetime "last_activity_at"
    t.datetime "expired_at"
    t.integer "security_question_id"
    t.string "security_question_answer"
    t.integer "second_factor_attempts_count", default: 0
    t.string "encrypted_otp_secret_key"
    t.string "encrypted_otp_secret_key_iv"
    t.string "encrypted_otp_secret_key_salt"
    t.string "direct_otp"
    t.datetime "direct_otp_sent_at"
    t.datetime "totp_timestamp"
    t.uuid "uuid", default: -> { "uuid_generate_v4()" }, null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["encrypted_otp_secret_key"], name: "index_accounts_on_encrypted_otp_secret_key", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "old_passwords", force: :cascade do |t|
    t.string "encrypted_password", null: false
    t.string "password_archivable_type", null: false
    t.integer "password_archivable_id", null: false
    t.string "password_salt"
    t.datetime "created_at"
    t.index ["password_archivable_type", "password_archivable_id"], name: "index_password_archivable"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "summary"
    t.text "body"
    t.string "image"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "uuid", default: -> { "uuid_generate_v4()" }, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.bigint "account_id"
    t.string "name"
    t.string "address"
    t.integer "price"
    t.string "integer"
    t.integer "rooms"
    t.integer "bathrooms"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "parking_spaces", default: 0
    t.text "details"
    t.boolean "for_sale", default: true
    t.datetime "available_date"
    t.string "status", default: "available"
    t.uuid "uuid", default: -> { "uuid_generate_v4()" }, null: false
    t.index ["account_id"], name: "index_properties_on_account_id"
  end

  create_table "security_questions", force: :cascade do |t|
    t.string "locale", null: false
    t.string "name", null: false
  end

end
