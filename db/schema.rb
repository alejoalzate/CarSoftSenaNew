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

ActiveRecord::Schema.define(:version => 20130526185134) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "center_programs", :force => true do |t|
    t.integer  "center_id"
    t.integer  "user_id"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "center_programs", ["center_id"], :name => "index_center_programs_on_center_id"
  add_index "center_programs", ["program_id"], :name => "index_center_programs_on_program_id"
  add_index "center_programs", ["user_id"], :name => "index_center_programs_on_user_id"

  create_table "centers", :force => true do |t|
    t.string   "name"
    t.integer  "code_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "centers", ["code_id"], :name => "index_centers_on_code_id"

  create_table "codes", :force => true do |t|
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "initials"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "name"
    t.integer  "type_material_id"
    t.integer  "user_id"
    t.string   "description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "materials", ["type_material_id"], :name => "index_materials_on_type_material_id"
  add_index "materials", ["user_id"], :name => "index_materials_on_user_id"

  create_table "modify_users", :force => true do |t|
    t.string   "change"
    t.integer  "user_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "modify_users", ["user_id"], :name => "index_modify_users_on_user_id"

  create_table "parkings", :force => true do |t|
    t.string   "space_avaible"
    t.string   "location"
    t.integer  "area_id"
    t.integer  "vehicle_id"
    t.string   "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "parkings", ["area_id"], :name => "index_parkings_on_area_id"
  add_index "parkings", ["vehicle_id"], :name => "index_parkings_on_vehicle_id"

  create_table "porters", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "address"
    t.string   "phone"
    t.integer  "turn_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "porters", ["turn_id"], :name => "index_porters_on_turn_id"

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.integer  "center_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "programs", ["center_id"], :name => "index_programs_on_center_id"

  create_table "records", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "amount"
    t.boolean  "movements"
    t.string   "destination"
    t.integer  "center_id"
    t.string   "provenance"
    t.integer  "vehicle_id"
    t.integer  "porter_id"
    t.integer  "material_id"
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "records", ["center_id"], :name => "index_records_on_center_id"
  add_index "records", ["material_id"], :name => "index_records_on_material_id"
  add_index "records", ["porter_id"], :name => "index_records_on_porter_id"
  add_index "records", ["team_id"], :name => "index_records_on_team_id"
  add_index "records", ["user_id"], :name => "index_records_on_user_id"
  add_index "records", ["vehicle_id"], :name => "index_records_on_vehicle_id"

  create_table "rhs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rols", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sheets", :force => true do |t|
    t.string   "code"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sheets", ["program_id"], :name => "index_sheets_on_program_id"

  create_table "suggestions", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "number_identification"
    t.string   "phone"
    t.string   "movil"
    t.text     "suggestion"
    t.integer  "document_id"
    t.integer  "user_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "suggestions", ["document_id"], :name => "index_suggestions_on_document_id"
  add_index "suggestions", ["user_id"], :name => "index_suggestions_on_user_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "serial"
    t.boolean  "mouse"
    t.boolean  "charger"
    t.string   "color"
    t.integer  "type_material_id"
    t.integer  "porter_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "teams", ["porter_id"], :name => "index_teams_on_porter_id"
  add_index "teams", ["type_material_id"], :name => "index_teams_on_type_material_id"
  add_index "teams", ["user_id"], :name => "index_teams_on_user_id"

  create_table "turns", :force => true do |t|
    t.string   "day"
    t.time     "start_time"
    t.time     "finish_time"
    t.date     "start_date"
    t.date     "finish_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "type_materials", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "type_users", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "type_vehicles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "finger_print"
    t.boolean  "female"
    t.string   "identification"
    t.string   "key"
    t.string   "email"
    t.string   "address_residence"
    t.string   "phone"
    t.string   "movil"
    t.integer  "document_id"
    t.integer  "rh_id"
    t.integer  "rol_id"
    t.integer  "type_user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "users", ["document_id"], :name => "index_users_on_document_id"
  add_index "users", ["rh_id"], :name => "index_users_on_rh_id"
  add_index "users", ["rol_id"], :name => "index_users_on_rol_id"
  add_index "users", ["type_user_id"], :name => "index_users_on_type_user_id"

  create_table "vehicles", :force => true do |t|
    t.string   "plate"
    t.string   "color"
    t.string   "brand"
    t.string   "model"
    t.integer  "type_vehicle_id"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "vehicles", ["type_vehicle_id"], :name => "index_vehicles_on_type_vehicle_id"
  add_index "vehicles", ["user_id"], :name => "index_vehicles_on_user_id"

end
