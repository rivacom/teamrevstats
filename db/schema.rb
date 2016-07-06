# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160630194748) do

  create_table "dailydifs", force: :cascade do |t|
    t.integer  "player_id",      limit: 4
    t.integer  "tgamesplayed",   limit: 4
    t.integer  "twins",          limit: 4
    t.integer  "tloss",          limit: 4
    t.integer  "tdamage",        limit: 4
    t.integer  "thealing",       limit: 4
    t.decimal  "winpercent",               precision: 16, scale: 2
    t.decimal  "tfinalblows",              precision: 16, scale: 2
    t.decimal  "tdeaths",                  precision: 16, scale: 2
    t.decimal  "tmedals",                  precision: 16, scale: 2
    t.decimal  "teliminations",            precision: 16, scale: 2
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "tqpgp",          limit: 4
    t.integer  "tcompgp",        limit: 4
    t.integer  "tqpwins",        limit: 4
    t.integer  "tcompwin",       limit: 4
    t.integer  "tqploss",        limit: 4
    t.integer  "tcomploss",      limit: 4
    t.integer  "tqpapdam",       limit: 4
    t.integer  "tcompdam",       limit: 4
    t.integer  "tqpheal",        limit: 4
    t.integer  "tcompheal",      limit: 4
    t.decimal  "qpwinpercent",             precision: 10
    t.decimal  "compwinpercent",           precision: 10
    t.decimal  "tqpfb",                    precision: 10
    t.decimal  "tcompfb",                  precision: 10
    t.decimal  "tqpdeath",                 precision: 10
    t.decimal  "tcompdeath",               precision: 10
    t.decimal  "tqpmedals",                precision: 10
    t.decimal  "tcompmedals",              precision: 10
    t.decimal  "tqpelim",                  precision: 10
    t.decimal  "tcompelim",                precision: 10
  end

  create_table "dailystats", force: :cascade do |t|
    t.integer  "player_id",    limit: 4
    t.integer  "gamesplayed",  limit: 4
    t.integer  "win",          limit: 4
    t.integer  "loss",         limit: 4
    t.decimal  "winpercent",             precision: 16, scale: 2
    t.decimal  "finalblows",             precision: 16, scale: 2
    t.decimal  "deaths",                 precision: 16, scale: 2
    t.decimal  "medals",                 precision: 16, scale: 2
    t.decimal  "eliminations",           precision: 16, scale: 2
    t.integer  "damage",       limit: 4
    t.integer  "healing",      limit: 4
    t.date     "statdate"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "compgp",       limit: 4
    t.integer  "compwon",      limit: 4
    t.integer  "comploss",     limit: 4
    t.decimal  "compwinper",             precision: 10
    t.decimal  "compfb",                 precision: 10
    t.decimal  "compdeath",              precision: 10
    t.decimal  "compmedal",              precision: 10
    t.decimal  "compelim",               precision: 10
    t.integer  "compdam",      limit: 4
    t.integer  "compheal",     limit: 4
  end

  create_table "players", force: :cascade do |t|
    t.string   "battlenet",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "avatar",     limit: 255
  end

end
