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

ActiveRecord::Schema[7.1].define(version: 2023_10_23_165458) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "contato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estoques", force: :cascade do |t|
    t.bigint "produto_id", null: false
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_estoques_on_produto_id"
  end

  create_table "fornecedores", force: :cascade do |t|
    t.string "nome"
    t.string "contato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "cargo"
    t.string "contato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historicos", force: :cascade do |t|
    t.datetime "data"
    t.string "tipo"
    t.integer "id_relacionado", null: false
    t.text "descricao"
    t.integer "transacao_por", null: false
    t.string "localizacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movimentacoes", force: :cascade do |t|
    t.integer "quantidade"
    t.bigint "produto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_movimentacoes_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "fornecedor_id", null: false
    t.bigint "produto_id", null: false
    t.integer "quantidade"
    t.datetime "data_pedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_pedidos_on_fornecedor_id"
    t.index ["produto_id"], name: "index_pedidos_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "produto_id", null: false
    t.integer "quantidade"
    t.datetime "data_venda"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
    t.index ["produto_id"], name: "index_vendas_on_produto_id"
  end

  add_foreign_key "estoques", "produtos"
  add_foreign_key "historicos", "funcionarios", column: "transacao_por"
  add_foreign_key "movimentacoes", "produtos"
  add_foreign_key "pedidos", "fornecedores", column: "fornecedor_id"
  add_foreign_key "pedidos", "produtos"
  add_foreign_key "vendas", "clientes"
  add_foreign_key "vendas", "produtos"
end
