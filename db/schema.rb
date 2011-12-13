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

ActiveRecord::Schema.define(:version => 20111213002525) do

  create_table "agents", :force => true do |t|
    t.string   "name"
    t.text     "contacts"
    t.string   "status",     :default => "active"
    t.integer  "editor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "announcements", :force => true do |t|
    t.text     "headline"
    t.text     "message"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.text     "data"
    t.boolean  "editable",   :default => false
    t.boolean  "faraway",    :default => false
    t.string   "mapname"
    t.float    "scale_ppm"
    t.string   "iconname"
    t.integer  "editor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assesment_cards", :force => true do |t|
    t.integer  "card_id"
    t.boolean  "driver",     :default => false
    t.text     "comment"
    t.integer  "editor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auth_logs", :force => true do |t|
    t.string   "username"
    t.string   "fullname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "criterias", :force => true do |t|
    t.string   "name"
    t.boolean  "alert",      :default => false
    t.integer  "number"
    t.integer  "editor_id"
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

  create_table "forth_man", :force => true do |t|
    t.string   "imonumber",     :limit => 16
    t.string   "name",          :limit => 64
    t.string   "callsign",      :limit => 20
    t.string   "flag",          :limit => 64
    t.string   "owner"
    t.integer  "gt"
    t.decimal  "loa",                         :precision => 5, :scale => 2
    t.decimal  "boa",                         :precision => 5, :scale => 2
    t.decimal  "draftfwd",                    :precision => 5, :scale => 2
    t.decimal  "aft",                         :precision => 5, :scale => 2
    t.decimal  "airdraft",                    :precision => 5, :scale => 2
    t.integer  "propelers"
    t.boolean  "proptype"
    t.integer  "trusters"
    t.integer  "editor_id"
    t.boolean  "engineop",                                                  :default => true
    t.datetime "approxtime",                                                                   :null => false
    t.integer  "from_area_id",                                              :default => 0
    t.integer  "to_area_id",                                                :default => 0
    t.integer  "conf_by_port",                                              :default => 0
    t.integer  "conf_by_agent",                                             :default => 0
    t.integer  "agent_id",                                                  :default => 0
    t.integer  "log_book_id",                                               :default => 0
    t.integer  "pilot_id"
    t.boolean  "accepted",                                                  :default => false
    t.text     "comment"
    t.boolean  "dcargo",                                                    :default => false
    t.string   "cargo_descr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructions", :force => true do |t|
    t.datetime "effective",   :null => false
    t.string   "subject"
    t.text     "body"
    t.datetime "due"
    t.boolean  "canceled"
    t.datetime "cancelation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.datetime "eta_varna"
    t.integer  "vessel_id"
    t.string   "country_receiver"
    t.string   "country_receiver_id"
    t.integer  "i18n_cruise_number"
    t.string   "starting_port"
    t.string   "ending_port"
    t.string   "maneuver_state"
    t.string   "maneuver_from"
    t.string   "maneuver_to"
    t.boolean  "danger_cargo"
    t.string   "danger_cargo_filename"
    t.string   "tug_company"
    t.text     "requirements"
    t.string   "payer"
    t.boolean  "rejected"
    t.boolean  "published"
    t.boolean  "draft"
    t.boolean  "deleted"
    t.boolean  "accepted"
    t.boolean  "finished"
    t.integer  "author_id"
    t.string   "accepted_by"
    t.string   "rejected_by"
    t.string   "finished_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.boolean  "mooring"
    t.string   "data"
    t.string   "imonumber",   :limit => 16
    t.integer  "ship_id"
    t.integer  "log_book_id"
    t.datetime "arrival"
    t.boolean  "leftanchor"
    t.integer  "la_keys",                   :default => 0
    t.boolean  "rightanchor"
    t.integer  "ra_keys",                   :default => 0
    t.boolean  "board"
    t.integer  "x_center",                  :default => 0
    t.integer  "y_center",                  :default => 0
    t.integer  "bearing"
    t.integer  "editor_id"
    t.string   "code"
    t.string   "psn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "real_name"
    t.string   "agent"
    t.string   "phones"
    t.string   "fax"
    t.string   "company_email"
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

  create_table "ship_data", :force => true do |t|
    t.string   "imonumber",   :limit => 16
    t.string   "name",        :limit => 64
    t.string   "callsign",    :limit => 20
    t.string   "flag",        :limit => 64
    t.string   "owner"
    t.integer  "gt"
    t.decimal  "loa",                       :precision => 5, :scale => 2
    t.decimal  "boa",                       :precision => 5, :scale => 2
    t.decimal  "draftfwd",                  :precision => 5, :scale => 2
    t.decimal  "aft",                       :precision => 5, :scale => 2
    t.decimal  "airdraft",                  :precision => 5, :scale => 2
    t.integer  "propelers"
    t.boolean  "proptype"
    t.integer  "trusters"
    t.integer  "editor_id"
    t.integer  "log_book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ships", :force => true do |t|
    t.string   "imonumber",  :limit => 16
    t.string   "name",       :limit => 64
    t.string   "callsign",   :limit => 20
    t.string   "flag",       :limit => 64
    t.string   "owner"
    t.integer  "gt"
    t.decimal  "loa",                      :precision => 5, :scale => 2
    t.decimal  "boa",                      :precision => 5, :scale => 2
    t.decimal  "draftfwd",                 :precision => 5, :scale => 2
    t.decimal  "aft",                      :precision => 5, :scale => 2
    t.decimal  "airdraft",                 :precision => 5, :scale => 2
    t.integer  "propelers"
    t.boolean  "proptype"
    t.integer  "trusters"
    t.integer  "editor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tugs", :force => true do |t|
    t.string   "name"
    t.integer  "editor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                :limit => 100
    t.string   "encrypted_password",   :limit => 128, :default => "",         :null => false
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
    t.string   "title"
    t.string   "status",                              :default => "disabled"
    t.string   "phone"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vessels", :force => true do |t|
    t.string   "imonumber",  :limit => 16
    t.string   "name"
    t.string   "callsign"
    t.string   "flag"
    t.string   "owner"
    t.integer  "gt"
    t.decimal  "loa",                      :precision => 5, :scale => 2
    t.decimal  "boa",                      :precision => 5, :scale => 2
    t.decimal  "draftfwd",                 :precision => 5, :scale => 2
    t.decimal  "aft",                      :precision => 5, :scale => 2
    t.decimal  "airdraft",                 :precision => 5, :scale => 2
    t.integer  "propelers"
    t.boolean  "proptype"
    t.integer  "thrusters"
    t.integer  "order_id"
    t.integer  "editor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
