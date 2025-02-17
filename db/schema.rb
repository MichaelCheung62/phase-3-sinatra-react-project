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

ActiveRecord::Schema.define(version: 2022_03_09_082413) do

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "release_date"
    t.string "summary"
    t.string "image"
    t.string "platform"
    t.float "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
  end

  create_table "watchlists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.index ["game_id"], name: "index_watchlists_on_game_id", unique: true
  end

end
