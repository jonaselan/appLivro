class AddPriceToLivros < ActiveRecord::Migration
  def change
    add_column :livros, :price, :integer
  end
end
