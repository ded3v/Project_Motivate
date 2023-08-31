class AddRatingToLivros < ActiveRecord::Migration[7.0]
  def change
    add_column :livros, :rating, :integer
  end
end
