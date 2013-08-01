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

ActiveRecord::Schema.define(:version => 20130801132013) do

  create_table "arduinos", :force => true do |t|
    t.integer  "reef_tank_id"
    t.text     "parameter_setup"
    t.string   "reef_tank_arduino_id"
    t.string   "arduino_board_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "demos", :force => true do |t|
    t.integer  "feature_user"
    t.boolean  "starting_page"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "equipment", :force => true do |t|
    t.text     "description"
    t.string   "equipment_name"
    t.string   "image"
    t.string   "equipment_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "livestock_imports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "livestocks", :force => true do |t|
    t.string   "scientific_name"
    t.string   "image"
    t.text     "description"
    t.string   "livestock_type"
    t.string   "common_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "maintainence_logs", :force => true do |t|
    t.integer  "reef_tank_id"
    t.text     "description"
    t.string   "amount"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "notifications", :force => true do |t|
    t.integer  "reef_tank_id"
    t.string   "reef_tank_arduino_id"
    t.boolean  "sent_email",           :null => false
    t.text     "message2"
    t.text     "message"
    t.string   "priority"
    t.boolean  "display_site_wide",    :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "reef_tanks", :force => true do |t|
    t.integer  "user_id"
    t.date     "setup_date"
    t.integer  "size"
    t.string   "measurement_type"
    t.boolean  "send_email_okay",      :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "reef_tank_id"
    t.text     "parameter_setup"
    t.string   "reef_tank_arduino_id"
    t.string   "arduino_board_type"
    t.string   "tank_name"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "todo_lists", :force => true do |t|
    t.integer  "reef_tank_id"
    t.text     "description"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "todo_tasks", :force => true do |t|
    t.integer  "reef_tank_id"
    t.integer  "list_id"
    t.string   "description"
    t.boolean  "completed"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "update_codes", :force => true do |t|
    t.integer  "reef_tank_id"
    t.string   "reef_tank_arduino_id"
    t.boolean  "sent_email",           :null => false
    t.text     "message"
    t.string   "priority"
    t.boolean  "display_site_wide",    :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "user_equipments", :force => true do |t|
    t.integer  "reef_tank_id"
    t.string   "reef_tank_arduino_id"
    t.text     "description"
    t.string   "equipment_name"
    t.string   "image"
    t.string   "equipment_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "user_livestocks", :force => true do |t|
    t.integer  "reef_tank_id"
    t.string   "scientific_name"
    t.text     "description"
    t.string   "image"
    t.string   "livestock_type"
    t.string   "common_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
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
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "watchers", :force => true do |t|
    t.integer  "reef_tank_id"
    t.text     "params"
    t.integer  "updated_reason"
    t.string   "reef_tank_arduino_id"
    t.boolean  "main_light"
    t.boolean  "ato_pump"
    t.boolean  "chiller"
    t.boolean  "refuge_light"
    t.boolean  "skimmer"
    t.boolean  "main_pump"
    t.boolean  "heater"
    t.boolean  "powerhead"
    t.decimal  "temp",                 :precision => 8, :scale => 2
    t.decimal  "ambeint_temp",         :precision => 8, :scale => 2
    t.integer  "ph_level"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.boolean  "waterlevelokay"
    t.boolean  "startingup"
  end

end
