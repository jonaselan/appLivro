class Livro < ActiveRecord::Base
  has_one :sale

  validates_presence_of :nome, :exemplares
end
