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

ActiveRecord::Schema.define(version: 20180121233359) do

  create_table "ability_scores", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_ability_scores_on_person_id"
  end

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "town_id"
    t.index ["town_id"], name: "index_establishments_on_town_id"
  end

  create_table "people", force: :cascade do |t|
    t.integer "town_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "occupation"
    t.integer "level"
    t.string "race"
    t.string "descriptor"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.integer "establishment_id"
    t.string "job_title"
    t.boolean "child"
    t.integer "hit_points"
    t.index ["establishment_id"], name: "index_people_on_establishment_id"
    t.index ["town_id"], name: "index_people_on_town_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "person_id"
    t.integer "relation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.index ["person_id"], name: "index_relationships_on_person_id"
  end

  create_table "towns", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
