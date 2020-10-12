class Cocktail < ApplicationRecord
    has_many :ingredients
    has_many :users, through: :ingredients
    validates :name, uniqueness: true
    validates_presence_of :name, :recipe, :calories
end
