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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130710134500) do

  create_table "background_images", :force => true do |t|
    t.string   "url"
    t.integer  "story_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.integer  "story_id"
    t.integer  "gender_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "sex"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mytale_images", :force => true do |t|
    t.integer  "people_image_id"
    t.integer  "mytale_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "mytales", :force => true do |t|
    t.integer  "user_id"
    t.integer  "story_id"
    t.string   "summary"
    t.text     "content"
    t.boolean  "private",              :default => true
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "title"
    t.integer  "mytales_character_id"
    t.integer  "mytale_image_id"
  end

  create_table "mytales_characters", :force => true do |t|
    t.string   "name"
    t.integer  "gender_id"
    t.integer  "mytale_id"
    t.integer  "character_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "people_images", :force => true do |t|
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "gender_id"
  end

  create_table "stories", :force => true do |t|
    t.string   "summary"
    t.text     "content"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "title"
    t.integer  "character_id"
    t.string   "source_link"
    t.string   "attribution"
    t.integer  "background_image_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

end
