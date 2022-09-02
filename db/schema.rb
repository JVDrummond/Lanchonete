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

ActiveRecord::Schema.define(version: 2022_09_01_233840) do

  create_table "baurus", force: :cascade do |t|
    t.string "bauru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cardapios", force: :cascade do |t|
    t.string "cardapio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lanches_id"
    t.integer "quantidade_id"
    t.integer "option_id"
    t.integer "bauru_id"
    t.index ["bauru_id"], name: "index_cardapios_on_bauru_id"
    t.index ["lanches_id"], name: "index_cardapios_on_lanches_id"
    t.index ["option_id"], name: "index_cardapios_on_option_id"
    t.index ["quantidade_id"], name: "index_cardapios_on_quantidade_id"
  end

  create_table "cozinhas", force: :cascade do |t|
    t.string "pedido"
    t.string "id_pedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finalizados", force: :cascade do |t|
    t.string "pedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "lanches" because of following StandardError
#   Unknown type 'reference' for column 'quantidade'

  create_table "opcos", force: :cascade do |t|
    t.string "opcoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantidades", force: :cascade do |t|
    t.string "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
