class CocktailsController < ApplicationController

    def index
        if params[:ingredient_id].present?
            ingredient = Ingredient.find_by_id(params[:ingredient_id])
            @cocktails = ingredient.cocktails
        else
            @cocktails = Cocktail
        end
        if params[:search]
            @cocktails = @cocktails.search(params[:search])
        end
        @cocktails = @cocktails.order(:name)
    end

    def show
        find_cocktail
            if @cocktail
                render :show
            else
                flash[:notice] = "Cocktail not found!"
                redirect_to cocktails_path
            end
            # conditional to not load error if going to a random :id in the URL
        end

    def new
        @cocktail = Cocktail.new
    end

    def create
        @cocktail = Cocktail.create(cocktail_params)
        if @cocktail.valid?
            redirect_to @cocktail
        else
            flash[:notice] = @cocktail.errors.full_messages.join(" - ")
            redirect_to new_cocktail_path
        end
    end

    def edit
        find_cocktail
    end

    def update
        find_cocktail
        @cocktail.update(cocktail_params)
        if @cocktail.errors.empty?
            redirect_to @cocktail
        else
            flash[:notice] = @cocktail.errors.full_messages.join(" - ")
            redirect_to edit_cocktail_path(@cocktail)
        end
    end

    def destroy
        find_cocktail
        if @cocktail.destroy
            redirect_to cocktails_path
        else
            flash[:notice] = "Was unable to delete Cocktail"
            redirect_to @cocktail
        end
    end


    private

    def find_cocktail
        @cocktail = Cocktail.find_by(id: params[:id])
    end

    def cocktail_params
        params.require(:cocktail).permit(:name, :recipe, :calories, :comment)
    end


end
