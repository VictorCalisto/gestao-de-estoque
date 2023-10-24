class Movimentacao < ApplicationRecord
  self.table_name = 'movimentacoes'
  belongs_to :produto
end
