class Cocktail < ApplicationRecord
    has_many :cocktail_ingredients
    has_many :ingredients, through: :cocktail_ingredients
    has_many :user_cocktails
    has_many :users, through: :user_cocktails
    #accepts_nested_attributes_for :ingredient_ids #, reject_if: proc { |ing| ing["name"] == "" }
    validates :name, uniqueness: true
    validates_presence_of :name, :recipe, :calories #, :ingredients
    validates_presence_of :ingredients
    validates :name, length: { in: 2..20 }
    scope :search, -> (query) { where("LOWER(name) LIKE ?", "%#{query.downcase}%") }




    def can_edit?(user)
        user.in?(self.users)
    end


    # validates_presence_of :one_ingredient
    
    # def one_ingredient(ing)
    #     ing.each do |ing|
    #         if ing.name.count == 1
    #             self.ingredients.build(ing)
    #         end
    # end




    # def ingredients_attributes=(ing_atts)
    #     # byebug
    #     ing_atts.values.each do |ing|
    #         if ing["name"] != ""
    #             self.ingredients.build(ing)
    #         end
    #     end
    # end

    # def formatted_time
    #     self.created_at.strftime("%a, %e %b %Y %H:%M")
    # end
end
