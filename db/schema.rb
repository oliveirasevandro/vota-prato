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

ActiveRecord::Schema.define(version: 20160915194058) do

  create_table "clientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",       limit: 80
    t.integer  "idade"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "comentarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "conteudo",        limit: 65535
    t.integer  "comentavel_id"
    t.string   "comentavel_type"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["comentavel_id"], name: "index_comentarios_on_comentavel_id", using: :btree
    t.index ["comentavel_type"], name: "index_comentarios_on_comentavel_type", using: :btree
  end

  create_table "pratos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",       limit: 80
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "pratos_restaurantes", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "prato_id"
    t.integer "restaurante_id"
  end

  create_table "qualificacoes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "nota",           limit: 24
    t.float    "valor_gasto",    limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "cliente_id"
    t.integer  "restaurante_id"
  end

  create_table "receitas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "conteudo",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "prato_id"
  end

  create_table "restaurantes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",          limit: 80
    t.string   "endereco"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "especialidade", limit: 40
  end

end
