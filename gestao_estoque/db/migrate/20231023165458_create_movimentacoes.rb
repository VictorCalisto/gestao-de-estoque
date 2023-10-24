class CreateMovimentacoes < ActiveRecord::Migration[7.1]
  def change
    create_table :movimentacoes do |t|
      t.integer :quantidade
      t.references :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
