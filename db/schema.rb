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

ActiveRecord::Schema.define(:version => 20110822150340) do

  create_table "announcements", :force => true do |t|
    t.text     "headline"
    t.text     "message"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flags", :force => true do |t|
    t.string   "name"
    t.string   "alpha2"
    t.string   "tld"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "real_name"
    t.string   "phones"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.string   "author"
    t.string   "reply_to"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", :force => true do |t|
    t.text     "message"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "settings", :force => true do |t|
    t.string   "label"
    t.string   "identifier"
    t.text     "description"
    t.string   "field_type",  :default => "string"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                :limit => 100
    t.string   "encrypted_password",   :limit => 128, :default => "",        :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "login",                :limit => 40
    t.string   "identity_url"
    t.string   "name",                 :limit => 100, :default => ""
    t.string   "state",                               :default => "passive"
    t.string   "twitter_token"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_request_at"
    t.string   "last_request_url"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vessels", :force => true do |t|
    t.string   "imonumber"
    t.string   "name"
    t.string   "callsign"
    t.string   "flag"
    t.string   "owner"
    t.integer  "gt"
    t.decimal  "loa",        :precision => 5, :scale => 2
    t.decimal  "boa",        :precision => 5, :scale => 2
    t.decimal  "draftfwd",   :precision => 5, :scale => 2
    t.decimal  "aft",        :precision => 5, :scale => 2
    t.decimal  "airdraft",   :precision => 5, :scale => 2
    t.integer  "editor_id"
    t.integer  "propelers"
    t.boolean  "proptype"
    t.integer  "thrusters"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
