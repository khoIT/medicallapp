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

ActiveRecord::Schema.define(version: 20140805011150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: true do |t|
    t.integer  "medicine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  create_table "final_indications", force: true do |t|
    t.integer  "medicine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  create_table "indications", force: true do |t|
    t.integer  "medicine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "content"
  end

  create_table "medicines", force: true do |t|
    t.string   "drug_name"
    t.string   "brand"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "other_educations", force: true do |t|
    t.text     "content"
    t.integer  "medicine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "physicians", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: true do |t|
    t.string   "edu_final_1"
    t.string   "edu_final_2"
    t.string   "edu_final_3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
