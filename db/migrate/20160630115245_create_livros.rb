class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.integer :exemplares

      t.timestamps null: false
    end
  end
end
