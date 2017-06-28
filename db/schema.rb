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

ActiveRecord::Schema.define(version: 20160716201116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "additional_insureds", force: :cascade do |t|
    t.integer  "quote_id",   null: false
    t.string   "name"
    t.string   "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_insureds", ["quote_id"], name: "index_additional_insureds_on_quote_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "drivers", force: :cascade do |t|
    t.integer  "quote_id",       null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "marital_status"
    t.string   "date_of_birth"
    t.string   "license_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drivers", ["quote_id"], name: "index_drivers_on_quote_id", using: :btree

  create_table "quotes", force: :cascade do |t|
    t.string   "type"
    t.string   "name_of_insured"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
    t.string   "phone"
    t.string   "email"
    t.string   "street_address"
    t.string   "street_address2"
    t.string   "city"
    t.string   "zipcode"
    t.string   "current_policy"
    t.text     "additional_info"
    t.string   "interested_in_life_insurance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "property_type_of_home"
    t.string   "property_occupancy_type"
    t.string   "property_dogs_on_property"
    t.string   "property_pool_or_hot_tub"
    t.string   "auto_current_insurance_carrier"
    t.string   "auto_current_insurance_expires"
    t.string   "auto_bodily_injury_per_person"
    t.string   "auto_bodily_injury_per_accident"
    t.string   "auto_property_damage"
    t.string   "auto_roadside_assistance"
    t.string   "auto_rental_car"
    t.string   "auto_comprehensive_deductible"
    t.string   "auto_collision_deductible"
    t.string   "auto_discounts"
    t.string   "commercial_business_type"
    t.string   "commercial_type_of_insurance"
    t.string   "life_tobacco_used"
    t.string   "life_term"
    t.string   "life_coverage_amount"
    t.string   "health_self_employed"
    t.string   "health_expected_annual_household_income"
    t.string   "health_number_of_people_in_household"
    t.string   "health_anyone_have_major_health_conditions"
    t.string   "health_major_life_event_in_past_thirty_days"
    t.string   "flood_type_of_home"
    t.string   "flood_is_home_over_water"
    t.string   "flood_building_purpose"
    t.string   "flood_is_primary_home"
    t.string   "boat_year"
    t.string   "boat_make"
    t.string   "boat_model"
    t.string   "boat_year_purchased"
    t.string   "boat_location_zipcode"
    t.string   "boat_usage"
    t.string   "condo_number_of_units"
    t.string   "condo_exterior_siding"
    t.string   "condo_within_five_minutes_of_fire_stations"
    t.string   "condo_within_one_thousand_feet_of_fire_hydrant"
    t.string   "condo_property_usage"
    t.string   "condo_own_dogs"
    t.string   "condo_number_of_full_time_employees"
    t.string   "condo_number_of_people_living_in_unit"
    t.string   "condo_are_any_policy_holders_retired"
    t.string   "renter_number_of_units"
    t.string   "renter_personal_property_coverage"
    t.string   "renter_own_dogs"
    t.string   "renter_number_of_people_living_in_unit"
    t.string   "renter_number_of_full_time_employees"
    t.string   "render_are_any_policy_holders_retired"
    t.string   "property_college_graduated"
    t.string   "property_degree"
    t.string   "property_occupation"
    t.string   "auto_college_graduated_from"
    t.string   "auto_current_occupation"
  end

  add_index "quotes", ["type"], name: "index_quotes_on_type", using: :btree

  create_table "valuable_items", force: :cascade do |t|
    t.integer  "quote_id",        null: false
    t.string   "name"
    t.string   "estimated_value"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "valuable_items", ["quote_id"], name: "index_valuable_items_on_quote_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.integer  "quote_id",                null: false
    t.string   "vin"
    t.string   "usage"
    t.string   "approximate_miles_a_day"
    t.string   "driver_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicles", ["quote_id"], name: "index_vehicles_on_quote_id", using: :btree

end
