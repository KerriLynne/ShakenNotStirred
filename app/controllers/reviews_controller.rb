class ReviewsController < ApplicationController
    # before_action :require_login
    # before_action :find_cocktail, only: [:show, :edit, :update, :destroy]
    # before_action :authorized?, only: [:edit, :update, :destroy]

    def new
        @cocktail = Cocktail.find_by_id(params[:cocktail_id])
        @review = Review.new(cocktail: @cocktail)
    end

    def create
        @cocktail = Cocktail.find_by_id(params[:cocktail_id])
        if current_user.reviews.where(cocktail: @cocktail).exists?
            redirect_to @cocktail
        else
            @review = @cocktail.reviews.create(user: current_user, rating:params[:review][:rating])
            if @review.persisted?
                redirect_to @cocktail
            else
                flash.now[:notice] = @review.errors.full_messages.to_sentence
                render :new
            end
        end
    end

    def edit
    end

    def update
        @cocktail = Cocktail.find_by_id(params[:cocktail_id])
        @review = @cocktail.reviews.update(user: current_user, rating:params[:review][:rating])
        if @review.persisted?
            redirect_to @cocktail
        else
            flash[:notice] = @review.errors.full_messages.to_sentence
            redirect_to edit_cocktail_review_path(@cocktail)
        end
    end


    private

    # def review_params
    #     params.require(:review).permit(:rating)
    # end

end