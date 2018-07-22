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

ActiveRecord::Schema.define(version: 2018_07_22_215118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "diaper_bank_users", force: :cascade do |t|
    t.integer "diaper_bank_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diaper_bank_id"], name: "index_diaper_bank_users_on_diaper_bank_id"
    t.index ["user_id"], name: "index_diaper_bank_users_on_user_id"
  end

  create_table "diaper_banks", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partner_users", force: :cascade do |t|
    t.integer "partner_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_partner_users_on_partner_id"
    t.index ["user_id"], name: "index_partner_users_on_user_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "diaper_bank_id"
    t.string "executive_director_name"
    t.string "program_contact_name"
    t.string "pick_up_name"
    t.text "application_data"
    t.string "status", default: "pending"
    t.string "distributor_type"
    t.string "agency_type"
    t.string "proof_of_agency_status"
    t.text "agency_mission"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "website"
    t.string "facebook"
    t.string "twitter"
    t.date "founded"
    t.string "form_990"
    t.string "program_name"
    t.text "program_description"
    t.integer "program_age"
    t.boolean "case_management"
    t.boolean "evidence_based"
    t.text "evidence_based_description"
    t.text "program_client_improvement"
    t.string "diaper_use"
    t.string "other_diaper_use"
    t.boolean "currently_provide_diapers"
    t.boolean "turn_away_child_care"
    t.string "program_address1"
    t.string "program_address2"
    t.string "program_city"
    t.string "program_state"
    t.string "program_zip_code"
    t.integer "max_serve"
    t.text "incorporate_plan"
    t.boolean "responsible_staff_position"
    t.boolean "storage_space"
    t.text "describe_storage_space"
    t.boolean "trusted_pickup"
    t.boolean "income_requirement_max"
    t.boolean "serve_income_circumstances"
    t.boolean "income_verification"
    t.boolean "internal_db"
    t.boolean "maac"
    t.integer "population_black"
    t.integer "population_white"
    t.integer "population_hispanic"
    t.integer "population_asian"
    t.integer "population_american_indian"
    t.integer "population_island"
    t.integer "population_multi_racial"
    t.integer "population_other"
    t.string "zips_served"
    t.boolean "at_fpl_or_below"
    t.boolean "above_1_2_times_fpl"
    t.boolean "greater_2_times_fpl"
    t.boolean "poverty_unknown"
    t.string "ages_served"
    t.string "executive_director_phone"
    t.string "executive_director_email"
    t.string "program_contact_phone"
    t.string "program_contact_mobile"
    t.string "program_contact_email"
    t.string "pick_up_method"
    t.string "pick_up_phone"
    t.string "pick_up_email"
    t.string "distribution_times"
    t.string "new_client_times"
    t.string "more_docs_required"
    t.string "sources_of_funding"
    t.string "sources_of_diapers"
    t.string "diaper_budget"
    t.string "diaper_funding_source"
    t.string "signature"
    t.index ["diaper_bank_id"], name: "index_partners_on_diaper_bank_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
