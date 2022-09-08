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

ActiveRecord::Schema.define(version: 2022_09_08_062437) do

  create_table "book_genres", force: :cascade do |t|
    t.string "book_id"
    t.string "genre_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "genre"
    t.string "publisher"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
  end

  create_table "genres", force: :cascade do |t|
    t.string "fiction"
    t.string "romance"
    t.string "horror"
    t.string "sci_fi"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "purchase_title"
    t.string "customer_id"
    t.string "book_id"
  end

  create_table "table", force: :cascade do |t|
    t.string "fiction"
    t.string "romance"
    t.string "horror"
    t.string "sci_fi"
  end

end
