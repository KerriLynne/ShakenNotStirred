class Ingredient < ApplicationRecord
    belongs_to :cocktail
    belongs_to :user
    validates_presence_of :name
end
