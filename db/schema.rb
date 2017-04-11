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

ActiveRecord::Schema.define(version: 20170411143051) do

  create_table "artists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artworks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "year"
    t.boolean  "published",            default: false
    t.string   "mediums"
    t.integer  "artist_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.index ["artist_id"], name: "index_artworks_on_artist_id", using: :btree
    t.index ["published"], name: "index_artworks_on_published", using: :btree
  end

end
