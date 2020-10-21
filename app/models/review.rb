class Review < ApplicationRecord
    belongs_to :cocktail
    belongs_to :user
    validates_presence_of :rating
    validates_inclusion_of :rating, in: 1..10 
end