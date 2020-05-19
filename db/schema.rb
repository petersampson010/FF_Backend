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

ActiveRecord::Schema.define(version: 2020_05_18_120935) do

  create_table "admin_users", primary_key: "admin_user_id", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "club_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gameweek_admin_user_joiners", primary_key: "gau_id", force: :cascade do |t|
    t.boolean "information_finalised"
    t.integer "gameweek_id_id", null: false
    t.integer "admin_user_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_user_id_id"], name: "index_gameweek_admin_user_joiners_on_admin_user_id_id"
    t.index ["gameweek_id_id"], name: "index_gameweek_admin_user_joiners_on_gameweek_id_id"
  end

  create_table "gameweeks", primary_key: "gameweek_id", force: :cascade do |t|
    t.boolean "game_played"
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
    t.integer "player_id_id", null: false
    t.integer "gameweek_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gameweek_id_id"], name: "index_player_gameweek_joiners_on_gameweek_id_id"
    t.index ["player_id_id"], name: "index_player_gameweek_joiners_on_player_id_id"
  end

  create_table "player_user_joiners", primary_key: "pu_id", force: :cascade do |t|
    t.boolean "sub"
    t.string "availability"
    t.boolean "captain"
    t.boolean "vice_captain"
    t.integer "player_id_id", null: false
    t.integer "user_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id_id"], name: "index_player_user_joiners_on_player_id_id"
    t.index ["user_id_id"], name: "index_player_user_joiners_on_user_id_id"
  end

  create_table "players", primary_key: "player_id", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_gameweek_joiners", primary_key: "ug_id", force: :cascade do |t|
    t.integer "total_points"
    t.integer "user_id_id", null: false
    t.integer "gameweek_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gameweek_id_id"], name: "index_user_gameweek_joiners_on_gameweek_id_id"
    t.index ["user_id_id"], name: "index_user_gameweek_joiners_on_user_id_id"
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string "username"
    t.string "teamname"
    t.string "password"
    t.integer "transfers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "gameweek_admin_user_joiners", "admin_user_ids"
  add_foreign_key "gameweek_admin_user_joiners", "gameweek_ids"
  add_foreign_key "player_gameweek_joiners", "gameweek_ids"
  add_foreign_key "player_gameweek_joiners", "player_ids"
  add_foreign_key "player_user_joiners", "player_ids"
  add_foreign_key "player_user_joiners", "user_ids"
  add_foreign_key "user_gameweek_joiners", "gameweek_ids"
  add_foreign_key "user_gameweek_joiners", "user_ids"
end
