class Livro < ActiveRecord::Base
  # belongs_to Venda

  validates_presence_of :nome, :exemplares
end
