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

ActiveRecord::Schema.define(:version => 20141209150123) do

  create_table "bouquet_purchases", :force => true do |t|
    t.integer  "quantity"
    t.integer  "purchase_id"
    t.integer  "bouquet_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "bouquets", :force => true do |t|
    t.integer  "event_id"
    t.float    "price"
    t.integer  "number_bouquets"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "bouquet_name"
    t.text     "bouquet_description"
    t.string   "bouquet_image"
    t.string   "purchase_id"
  end

  create_table "events", :force => true do |t|
    t.integer  "user_id"
    t.string   "event_address_number"
    t.string   "event_street_name"
    t.string   "event_postcode"
    t.string   "event_contact_number"
    t.integer  "quantity_of_flowers"
    t.text     "flower_description"
    t.text     "equipment_return"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "event_name"
  end

  create_table "purchases", :force => true do |t|
    t.integer  "purchase_order_number"
    t.integer  "bouquet_id"
    t.integer  "user_id"
    t.date     "delivery_date"
    t.boolean  "same_as_billing_address"
    t.string   "delivery_house_number"
    t.string   "delivery_road_name"
    t.string   "delivery_postcode"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
    t.string   "house_number"
    t.string   "road_name"
    t.string   "postcode"
    t.string   "company_name"
    t.string   "website"
    t.string   "contact_number"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
