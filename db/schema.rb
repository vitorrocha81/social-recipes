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

ActiveRecord::Schema.define(version: 20150217025006) do

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "type_kitchen"
    t.string   "preference"
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
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "cidade"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "favorite_cuisine"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
