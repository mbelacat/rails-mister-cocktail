class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, uniqueness: {scope: :ingredient, message: "already added"}
  validates :description, presence: true
end
