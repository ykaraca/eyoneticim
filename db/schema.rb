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

ActiveRecord::Schema[7.0].define(version: 2022_08_23_120909) do
  create_table "active_sessions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_agent"
    t.string "ip_address"
    t.string "remember_token", null: false
    t.index ["remember_token"], name: "index_active_sessions_on_remember_token", unique: true
    t.index ["user_id"], name: "index_active_sessions_on_user_id"
  end

  create_table "bloks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "blokadi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daires", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "daireno"
    t.string "kat"
    t.string "brut"
    t.string "net"
    t.string "arsapayi"
    t.integer "parksayisi"
    t.integer "peteksatisi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dairetipi_id"
    t.bigint "blok_id", null: false
    t.index ["blok_id"], name: "index_daires_on_blok_id"
    t.index ["dairetipi_id"], name: "index_daires_on_dairetipi_id"
  end

  create_table "dairetipis", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "aciklama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "giderkategoris", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "aciklama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kisilers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "adsoyad"
    t.string "telefon"
    t.string "eposta"
    t.text "adres"
    t.string "sifre"
    t.string "tcno"
    t.date "dogumtarihi"
    t.string "meslek"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "confirmed_at"
    t.string "password_digest", null: false
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "active_sessions", "users", on_delete: :cascade
  add_foreign_key "daires", "bloks"
  add_foreign_key "daires", "dairetipis"
end
