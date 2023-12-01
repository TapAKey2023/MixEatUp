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

ActiveRecord::Schema[7.1].define(version: 2023_11_30_165633) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bills", force: :cascade do |t|
    t.integer "number_of_people"
    t.float "total_price"
    t.bigint "restaurant_id", null: false
    t.bigint "user_id", null: false
    t.float "average_price_per_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_visit"
    t.integer "food_price"
    t.integer "drink_price"
    t.index ["restaurant_id"], name: "index_bills_on_restaurant_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "create_restaurants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_preferences", force: :cascade do |t|
    t.string "food_preference_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occasions", force: :cascade do |t|
    t.string "occasion_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_food_preferences", force: :cascade do |t|
    t.bigint "allergy_id", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_restaurant_food_preferences_on_allergy_id"
    t.index ["restaurant_id"], name: "index_restaurant_food_preferences_on_restaurant_id"
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
    t.text "reason"
    t.string "rating"
    t.string "trending"
    t.string "instagram"
    t.string "facebook"
    t.string "resy"
    t.text "about"
    t.text "location_details"
    t.string "other_occasion"
  end

  create_table "saved_restaurants", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_saved_restaurants_on_restaurant_id"
    t.index ["user_id"], name: "index_saved_restaurants_on_user_id"
  end

  create_table "user_food_preferences", force: :cascade do |t|
    t.bigint "allergy_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_user_food_preferences_on_allergy_id"
    t.index ["user_id"], name: "index_user_food_preferences_on_user_id"
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
    t.integer "reward_point", default: 0
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bills", "restaurants"
  add_foreign_key "bills", "users"
  add_foreign_key "restaurant_food_preferences", "food_preferences", column: "allergy_id"
  add_foreign_key "restaurant_food_preferences", "restaurants"
  add_foreign_key "restaurant_occasions", "occasions"
  add_foreign_key "restaurant_occasions", "restaurants"
  add_foreign_key "saved_restaurants", "restaurants"
  add_foreign_key "saved_restaurants", "users"
  add_foreign_key "user_food_preferences", "food_preferences", column: "allergy_id"
  add_foreign_key "user_food_preferences", "users"
end
