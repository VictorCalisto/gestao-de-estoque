class CreatePedidos < ActiveRecord::Migration[7.1]
  def change
    create_table :pedidos do |t|
      t.references :fornecedor, null: false, foreign_key: { to_table: :fornecedores }
      t.references :produto, null: false, foreign_key: true
      t.integer :quantidade
      t.datetime :data_pedido

      t.timestamps
    end
  end
end