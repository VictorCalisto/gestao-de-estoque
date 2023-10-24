class CreateFornecedores < ActiveRecord::Migration[7.1]
  def change
    create_table :fornecedores do |t|
      t.string :nome
      t.string :contato

      t.timestamps
    end
  end
end
