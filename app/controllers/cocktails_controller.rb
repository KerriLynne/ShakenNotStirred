class CocktailsController < ApplicationController
    before_action :require_login
    before_action :find_cocktail, only: [:show, :edit, :update, :destroy]
    before_action :authorized?, only: [:edit, :update, :destroy]

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
        @cocktail = current_user.cocktails.create(cocktail_params)
        if @cocktail.persisted?
            redirect_to @cocktail
        else
            flash.now[:notice] = @cocktail.errors.full_messages.to_sentence
            render :new
        end
    end

    def edit
    end

    def update
        @cocktail.update(cocktail_params)
        if @cocktail.errors.empty?
            redirect_to @cocktail
        else
            flash[:notice] = @cocktail.errors.full_messages.to_sentence
            redirect_to edit_cocktail_path(@cocktail)
        end
    end

    def destroy
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
        params.require(:cocktail).permit(:name, :recipe, :calories, :comment, ingredient_ids:[])
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end

    def authorized?
        if !current_user.in?(@cocktail.users)
            head :unauthorized
        end
    end


end
