class Post < ApplicationRecord
  # Associações
  belongs_to :livro

  # Validações
  validates :title, presence: true
  validates :content, presence: true
end
