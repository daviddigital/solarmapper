# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_15_100704) do

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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "batteries", force: :cascade do |t|
    t.string "size"
    t.string "name"
    t.decimal "price"
    t.text "description"
    t.boolean "available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "battery_suppliers", force: :cascade do |t|
    t.bigint "battery_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["battery_id"], name: "index_battery_suppliers_on_battery_id"
    t.index ["supplier_id"], name: "index_battery_suppliers_on_supplier_id"
  end

  create_table "solar_suppliers", force: :cascade do |t|
    t.bigint "solar_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["solar_id"], name: "index_solar_suppliers_on_solar_id"
    t.index ["supplier_id"], name: "index_solar_suppliers_on_supplier_id"
  end

  create_table "solars", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.text "description"
    t.decimal "price"
    t.boolean "available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "display_name"
    t.string "business_name"
    t.string "business_num"
    t.string "accred_num"
    t.string "phone"
    t.string "display_email"
    t.string "quote_email"
    t.boolean "instant_price"
    t.text "short_description"
    t.text "long_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "website"
    t.string "address"
    t.bigint "system_type_id", null: false
    t.index ["system_type_id"], name: "index_suppliers_on_system_type_id"
  end

  create_table "system_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "battery_suppliers", "batteries"
  add_foreign_key "battery_suppliers", "suppliers"
  add_foreign_key "solar_suppliers", "solars"
  add_foreign_key "solar_suppliers", "suppliers"
  add_foreign_key "suppliers", "system_types"
end
