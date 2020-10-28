class Ingredient < ApplicationRecord
    has_many :cocktail_ingredients
    has_many :cocktails, through: :cocktail_ingredients
    validates_presence_of :name 
    validates_uniqueness_of :name, case_sensitive: false
end
