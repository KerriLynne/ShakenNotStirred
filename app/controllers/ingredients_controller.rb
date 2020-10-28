class IngredientsController < ApplicationController
    before_action :require_login

    def index
            @ingredients = Ingredient.order('upper(name)')
    end

    def show
        find_ingredient
    end

    def new
            @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.create(ingredient_params)
        if @ingredient.persisted?
            redirect_to ingredients_path
        else
            flash.now[:notice] = @ingredient.errors.full_messages.to_sentence
            render :new
        end
    end




    private

    def find_ingredient
        @ingredient = Ingredient.find_by_id(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
end




