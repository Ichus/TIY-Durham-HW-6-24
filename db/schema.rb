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

ActiveRecord::Schema.define(version: 20140624213617) do

  create_table "attendees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "west_neighbor_id"
    t.integer  "east_neighbor_id"
    t.integer  "north_neighbor_id"
    t.integer  "south_neighbor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attendees", ["east_neighbor_id"], name: "index_attendees_on_east_neighbor_id"
  add_index "attendees", ["north_neighbor_id"], name: "index_attendees_on_north_neighbor_id"
  add_index "attendees", ["south_neighbor_id"], name: "index_attendees_on_south_neighbor_id"
  add_index "attendees", ["west_neighbor_id"], name: "index_attendees_on_west_neighbor_id"

  create_table "shows", force: true do |t|
    t.string   "name"
    t.integer  "max_attendence"
    t.integer  "stages"
    t.integer  "max_vendors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", id: false, force: true do |t|
    t.integer  "attendee_id"
    t.integer  "show_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["attendee_id"], name: "index_tickets_on_attendee_id"
  add_index "tickets", ["show_id"], name: "index_tickets_on_show_id"

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "vendor_type"
    t.string   "location"
    t.integer  "show_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendors", ["show_id"], name: "index_vendors_on_show_id"

end
