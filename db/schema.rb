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

ActiveRecord::Schema.define(version: 2019_10_13_161245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departamentos", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "resetar_senha_token"
    t.datetime "resetar_senha_timestamp"
  end

  create_table "historicos", force: :cascade do |t|
    t.integer "produto_id"
    t.string "depto_solicitante"
    t.datetime "data_reposta"
    t.datetime "data_solicitacao"
    t.integer "resultado"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "descricao"
    t.string "categoria"
    t.string "imagem"
    t.string "nome_prod"
    t.string "dono_produto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "solicitacaos", force: :cascade do |t|
    t.integer "produto_id"
    t.string "depto_solicitante"
    t.datetime "data_solicitacao"
  end

end
