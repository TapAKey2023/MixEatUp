# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_28_124312) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.string "allergy_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.integer "number_of_people"
    t.float "total_price"
    t.bigint "restaurant_id", null: false
    t.bigint "user_id", null: false
    t.float "average_price_per_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_bills_on_restaurant_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "create_restaurants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occasions", force: :cascade do |t|
    t.string "occasion_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_allergies", force: :cascade do |t|
    t.bigint "allergy_id", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_restaurant_allergies_on_allergy_id"
    t.index ["restaurant_id"], name: "index_restaurant_allergies_on_restaurant_id"
  end

  create_table "restaurant_occasions", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "occasion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["occasion_id"], name: "index_restaurant_occasions_on_occasion_id"
    t.index ["restaurant_id"], name: "index_restaurant_occasions_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "cuisine_type"
    t.string "phone_no"
    t.boolean "chain", default: false
    t.string "budget", default: [], array: true
    t.time "opening_hour"
    t.time "closing_hour"
    t.string "meal_type"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_restaurants", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_saved_restaurants_on_restaurant_id"
    t.index ["user_id"], name: "index_saved_restaurants_on_user_id"
  end

  create_table "user_allergies", force: :cascade do |t|
    t.bigint "allergy_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_user_allergies_on_allergy_id"
    t.index ["user_id"], name: "index_user_allergies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.float "latitude"
    t.float "longitude"
    t.string "reward_point"
    t.string "integer"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "restaurants"
  add_foreign_key "bills", "users"
  add_foreign_key "restaurant_allergies", "allergies"
  add_foreign_key "restaurant_allergies", "restaurants"
  add_foreign_key "restaurant_occasions", "occasions"
  add_foreign_key "restaurant_occasions", "restaurants"
  add_foreign_key "saved_restaurants", "restaurants"
  add_foreign_key "saved_restaurants", "users"
  add_foreign_key "user_allergies", "allergies"
  add_foreign_key "user_allergies", "users"
end
