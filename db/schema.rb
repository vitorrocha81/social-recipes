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

ActiveRecord::Schema.define(version: 20150220205859) do

  create_table "admins", force: :cascade do |t|
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "cuisines", force: :cascade do |t|
    t.string   "cuisine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "admin_id"
  end

  add_index "cuisines", ["admin_id"], name: "index_cuisines_on_admin_id"

  create_table "food_preferences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "admin_id"
  end

  add_index "food_preferences", ["admin_id"], name: "index_food_preferences_on_admin_id"

  create_table "food_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "admin_id"
  end

  add_index "food_types", ["admin_id"], name: "index_food_types_on_admin_id"

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "food_type"
    t.string   "food_preference"
    t.integer  "serves_people"
    t.integer  "time_preper"
    t.string   "level"
    t.text     "ingredients"
    t.text     "steps"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.integer  "cuisine_id"
    t.integer  "food_type_id"
    t.integer  "food_preference_id"
  end

  add_index "recipes", ["cuisine_id"], name: "index_recipes_on_cuisine_id"
  add_index "recipes", ["food_preference_id"], name: "index_recipes_on_food_preference_id"
  add_index "recipes", ["food_type_id"], name: "index_recipes_on_food_type_id"
  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "cidade"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "favorite_cuisine"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
