class IngredientsController < ApplicationController
    before_action :require_login

    def index
        if params[:cocktail_id]
            @cocktail = Cocktail.find_by_id(params[:cocktail_id])
                #can also verify that cocktail exists
            @ingredients = @cocktail.ingredients
        else
            @ingredients = Ingredient.all.find_all{|ing| ing.name != ""}
        end
    end

    def show
        # if params[:cocktail_id]
        #     @cocktail = Cocktail.find_by_id(params[:cocktail_id])
        #     find_ingredient
        #     if @cocktail.ingredients.include?(@ingredient)
        #         render :show
        #     else
        #         flash[:notice] = "Ingredient doesn't belong to cocktail."
        #         redirect_to cocktails_path
        #     end
        # else
            find_ingredient
    end

    def new
        if params[:cocktail_id]
            @cocktail = Cocktail.find_by_id(params[:cocktail_id])
            @ingredient = @cocktail.ingredients.build
        else
            @ingredient = Ingredient.new
        end
    end

    def create
    end




    private

    def find_ingredient
        @ingredient = Ingredient.find_by_id(params[:id])
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end
end




