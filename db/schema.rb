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

ActiveRecord::Schema.define(:version => 20140210100151) do

  create_table "attendances", :force => true do |t|
    t.integer  "userid"
    t.date     "date"
    t.time     "reachtime"
    t.time     "leavetime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "timetables", :force => true do |t|
    t.integer  "jplevel"
    t.string   "classname"
    t.string   "school"
    t.time     "starttime"
    t.time     "endtime"
    t.boolean  "sunday"
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wednesday"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "saturday"
    t.float    "duration"
    t.date     "startdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "travelfees", :force => true do |t|
    t.integer  "userid"
    t.string   "classname"
    t.date     "date"
    t.integer  "travelfee"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "userid"
    t.string   "name"
    t.date     "dob"
    t.string   "address"
    t.integer  "phone"
    t.integer  "normaltravelfee"
    t.boolean  "gender"
    t.string   "team"
    t.string   "NRCnumber"
    t.integer  "year_of_entry"
    t.date     "date_of_entry"
    t.integer  "leaveday"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
