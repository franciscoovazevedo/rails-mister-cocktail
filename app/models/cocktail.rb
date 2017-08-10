class Cocktail < ApplicationRecord
  has_many :doses,  dependent: :destroy
  has_many :ingredients, through: :doses # dá jeito para chamar @cocktail.ingredients
  validates :name, presence: true, uniqueness: true
end
