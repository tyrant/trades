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

ActiveRecord::Schema.define(:version => 20110628230748) do

  create_table "addresses", :force => true do |t|
    t.string   "state"
    t.integer  "locatable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "locatable_type", :default => "Job"
    t.float    "lat"
    t.float    "lng"
    t.text     "readable"
  end

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string "name"
    t.float  "lat"
    t.float  "lng"
  end

  create_table "customers", :force => true do |t|
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "login"
    t.boolean  "admin"
  end

  add_index "customers", ["email"], :name => "index_customers_on_email", :unique => true
  add_index "customers", ["reset_password_token"], :name => "index_customers_on_reset_password_token", :unique => true

  create_table "images", :force => true do |t|
    t.string   "url"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "imageable_id"
    t.string   "imageable_type",     :default => "Job"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.string   "image_file_size"
    t.string   "image_updated_at"
    t.string   "token"
  end

  create_table "jobs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "trader_id"
    t.boolean  "completed"
    t.boolean  "public"
  end

  create_table "professions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professions_jobs", :id => false, :force => true do |t|
    t.integer "profession_id"
    t.integer "job_id"
  end

  add_index "professions_jobs", ["profession_id", "job_id"], :name => "by_profession_and_job", :unique => true

  create_table "professions_traders", :id => false, :force => true do |t|
    t.integer "profession_id"
    t.integer "trader_id"
  end

  add_index "professions_traders", ["profession_id", "trader_id"], :name => "by_profession_and_trade", :unique => true

  create_table "quotes", :force => true do |t|
    t.text     "content"
    t.integer  "trader_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "mark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reviewable_id"
    t.string   "reviewable_type", :default => "Job"
    t.integer  "reviewer_id"
    t.string   "reviewer_type",   :default => "Customer"
  end

  create_table "traders", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "temp_password"
    t.text     "question"
    t.boolean  "sprightly"
  end

  add_index "traders", ["email"], :name => "index_traders_on_email", :unique => true
  add_index "traders", ["reset_password_token"], :name => "index_traders_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "videoable_id"
    t.string   "videoable_type", :default => "Quote"
  end

end
