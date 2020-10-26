class Cocktail < ApplicationRecord
    has_many :cocktail_ingredients
    has_many :ingredients, through: :cocktail_ingredients
    has_many :user_cocktails
    has_many :users, through: :user_cocktails
    has_many :reviews
    #accepts_nested_attributes_for :ingredient_ids #, reject_if: proc { |ing| ing["name"] == "" }
    validates :name, uniqueness: true
    validates_presence_of :name, :recipe, :calories 
    validates_presence_of :ingredients
    validates :name, length: { in: 2..20 }
    scope :search, -> (query) { where("LOWER(name) LIKE ?", "%#{query.downcase}%") }




    def can_edit?(user)
        user.in?(self.users)
    end

end
