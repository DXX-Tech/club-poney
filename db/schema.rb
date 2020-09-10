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

ActiveRecord::Schema.define(version: 2020_09_09_135958) do

  create_table "imports", force: :cascade do |t|
    t.string "filename"
    t.string "status"
    t.integer "nb_lines_created"
    t.integer "nb_lines_updated"
    t.integer "nb_errors"
    t.string "messages"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ponies", force: :cascade do |t|
    t.string "name"
    t.string "mane"
    t.string "fur"
    t.string "eyes"
    t.string "description"
  end

end
