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

ActiveRecord::Schema.define(:version => 20120715013902) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "albums", :force => true do |t|
    t.string   "title",          :null => false
    t.text     "description"
    t.integer  "cover_photo_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "albums", ["cover_photo_id"], :name => "albums_cover_photo_id"
  add_index "albums", ["title"], :name => "albums_title_unique", :unique => true

  create_table "biographies", :force => true do |t|
    t.string   "title",      :null => false
    t.text     "content",    :null => false
    t.string   "image"
    t.string   "slug",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "biographies", ["title"], :name => "biographies_title", :unique => true

  create_table "events", :force => true do |t|
    t.string   "title",       :null => false
    t.datetime "start_time"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "events", ["start_time"], :name => "events_start_time"
  add_index "events", ["title"], :name => "events_title"

  create_table "news", :force => true do |t|
    t.string   "title",      :null => false
    t.text     "content",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "news", ["title"], :name => "news_title", :unique => true

  create_table "photos", :force => true do |t|
    t.string   "title",      :null => false
    t.text     "caption"
    t.string   "image",      :null => false
    t.integer  "album_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "photos", ["title"], :name => "photos_title"

  create_table "recordings", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.string   "url",         :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "recordings", ["title"], :name => "recordings_title", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.string   "url",         :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "videos", ["title"], :name => "videos_title", :unique => true

end
