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

ActiveRecord::Schema.define(version: 2018_11_01_182744) do

  create_table "bills", force: :cascade do |t|
    t.integer "doctor_charge"
    t.integer "medicine_charge"
    t.integer "room_charge"
    t.integer "opteration_charge"
    t.integer "no_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "outpatient_id"
    t.index ["outpatient_id"], name: "index_bills_on_outpatient_id"
  end

  create_table "doctortables", force: :cascade do |t|
    t.string "doctor_name"
    t.string "doctor_sp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "outpatient_id"
    t.index ["outpatient_id"], name: "index_doctortables_on_outpatient_id"
  end

  create_table "inpatients", force: :cascade do |t|
    t.date "date_of_add"
    t.date "date_of_dis"
    t.integer "advance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "labtable_id"
    t.integer "roomtable_id"
    t.index ["labtable_id"], name: "index_inpatients_on_labtable_id"
    t.index ["roomtable_id"], name: "index_inpatients_on_roomtable_id"
  end

  create_table "labtables", force: :cascade do |t|
    t.string "pid"
    t.date "dt"
    t.string "category"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "doctortable_id"
    t.index ["doctortable_id"], name: "index_labtables_on_doctortable_id"
  end

  create_table "outpatients", force: :cascade do |t|
    t.date "dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "labtable_id"
    t.index ["labtable_id"], name: "index_outpatients_on_labtable_id"
  end

  create_table "roomtables", force: :cascade do |t|
    t.integer "room_no"
    t.string "room_type"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "inpatient_id"
    t.index ["inpatient_id"], name: "index_roomtables_on_inpatient_id"
  end

end
