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

ActiveRecord::Schema.define(version: 20141122211424) do

  create_table "articles", force: true do |t|
    t.text     "name"
    t.text     "content"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video_id"
    t.string   "tag"
    t.string   "cta_button"
    t.string   "background_file_name"
    t.string   "background_content_type"
    t.integer  "background_file_size"
    t.datetime "background_updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string   "header_file_name"
    t.string   "header_content_type"
    t.integer  "header_file_size"
    t.datetime "header_updated_at"
    t.string   "body1_file_name"
    t.string   "body1_content_type"
    t.integer  "body1_file_size"
    t.datetime "body1_updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "post_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "location"
    t.string   "venue"
    t.datetime "date_time"
    t.text     "description"
    t.string   "ext_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funds", force: true do |t|
    t.string   "title"
    t.string   "source"
    t.string   "type"
    t.datetime "age_range"
    t.datetime "deadline"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ext_url"
  end

  create_table "posts", force: true do |t|
    t.text     "content"
    t.string   "img_url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "email",                   default: "",    null: false
    t.string   "encrypted_password",      default: "",    null: false
    t.datetime "date_of_birth"
    t.string   "location"
    t.boolean  "its_female",              default: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio"
    t.string   "bg_url"
    t.boolean  "admin",                   default: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string   "header_file_name"
    t.string   "header_content_type"
    t.integer  "header_file_size"
    t.datetime "header_updated_at"
    t.string   "body1_file_name"
    t.string   "body1_content_type"
    t.integer  "body1_file_size"
    t.datetime "body1_updated_at"
    t.string   "body2_file_name"
    t.string   "body2_content_type"
    t.integer  "body2_file_size"
    t.datetime "body2_updated_at"
    t.string   "body3_file_name"
    t.string   "body3_content_type"
    t.integer  "body3_file_size"
    t.datetime "body3_updated_at"
    t.string   "background_file_name"
    t.string   "background_content_type"
    t.integer  "background_file_size"
    t.datetime "background_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
