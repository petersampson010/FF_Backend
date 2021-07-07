# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_18_095919) do

  create_table "admin_users", primary_key: "admin_user_id", force: :cascade do |t|
    t.string "email", null: false
    t.string "password", null: false
    t.string "club_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gameweeks", primary_key: "gameweek_id", force: :cascade do |t|
    t.string "date", null: false
    t.string "opponent", null: false
    t.string "score"
    t.boolean "complete", null: false
    t.integer "admin_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_gameweek_joiners", primary_key: "pg_id", force: :cascade do |t|
    t.integer "minutes"
    t.integer "assists"
    t.integer "goals"
    t.integer "own_goals"
    t.integer "y_cards"
    t.integer "r_cards"
    t.integer "bonus"
    t.integer "penalty_miss"
    t.integer "goals_conceded"
    t.integer "total_points"
    t.integer "player_id", null: false
    t.integer "gameweek_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_user_joiners", primary_key: "pu_id", force: :cascade do |t|
    t.boolean "sub", null: false
    t.boolean "captain", null: false
    t.boolean "vice_captain", null: false
    t.integer "player_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", primary_key: "player_id", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "position", null: false
    t.float "price", null: false
    t.string "availability", null: false
    t.integer "admin_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["first_name", "last_name", "admin_user_id"], name: "index_players_on_first_name_and_last_name_and_admin_user_id", unique: true
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string "email"
    t.string "teamname", null: false
    t.string "password", null: false
    t.integer "transfers", null: false
    t.float "budget", null: false
    t.integer "admin_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
