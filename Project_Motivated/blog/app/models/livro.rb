class Livro < ApplicationRecord
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }, allow_blank: true
end
