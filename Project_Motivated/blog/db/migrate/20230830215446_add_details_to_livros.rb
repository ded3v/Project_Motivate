class AddDetailsToLivros < ActiveRecord::Migration[6.1]
  def change
    add_column :livros, :synopsis, :text
    add_column :livros, :author, :string
    # Outras colunas, se necessário
  end
end
