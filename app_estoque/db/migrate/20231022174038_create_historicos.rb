class CreateHistoricos < ActiveRecord::Migration[7.1]
  def change
    create_table :historicos do |t|
      t.datetime :data
      t.string :tipo
      t.integer :id_relacionado, null: false
      t.text :descricao
      t.integer :transacao_por,  null: false
      t.string :localizacao
      
      t.timestamps
    end

    add_foreign_key :historicos, :funcionarios, column: :transacao_por

  end
end
