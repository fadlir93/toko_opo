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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_11_15_010135) do
=======
ActiveRecord::Schema.define(version: 2018_11_14_093851) do
>>>>>>> 1eee547e6c4adba6f809f77d1eaa84d14c7df8f8

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "categories", force: :cascade do |t|
=======
  create_table "products", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.float "price"
    t.integer "stock"
>>>>>>> 1eee547e6c4adba6f809f77d1eaa84d14c7df8f8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
