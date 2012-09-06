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

ActiveRecord::Schema.define(:version => 20120905165152) do

  create_table "posts", :force => true do |t|
    t.string   "visible",            :limit => 3
    t.string   "title",              :limit => 200
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "reports", :force => true do |t|
    t.string   "relatorio",  :limit => 200
    t.string   "arquivo",    :limit => 200
    t.string   "email",      :limit => 200
    t.string   "caminho",    :limit => 300
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",          :limit => 100
    t.string   "mail",          :limit => 100
    t.string   "password_hash", :limit => 300
    t.string   "password_salt", :limit => 300
    t.string   "adm",           :limit => 3
    t.string   "ger",           :limit => 3
    t.string   "opr",           :limit => 3
    t.string   "est",           :limit => 3
    t.string   "cxa",           :limit => 3
    t.string   "pag",           :limit => 3
    t.string   "rec",           :limit => 3
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
