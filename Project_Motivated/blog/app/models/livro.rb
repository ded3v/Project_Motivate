class Livro < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true

  has_many :comentarios, dependent: :destroy
end
