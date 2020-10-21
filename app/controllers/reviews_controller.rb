class ReviewsController < ApplicationController
    # before_action :require_login
    # before_action :find_cocktail, only: [:show, :edit, :update, :destroy]
    # before_action :authorized?, only: [:edit, :update, :destroy]

    def new
        @review = Review.new
    end

    def new
        if params[:cocktail_id]
            @cocktail = Cocktail.find_by_id(params[:cocktail_id])
            @review = @cocktail.reviews.build
        else
            flash.now[:notice] = @review.errors.full_messages.to_sentence
            render :new
        end
    end

    # def create
    #     @cocktail = current_user.cocktails.create(cocktail_params)
    #     @review = @cocktail.reviews.build
    #     if @review.persisted?
    #         redirect_to @cocktail
    #     else
    #         flash.now[:notice] = @review.errors.full_messages.to_sentence
    #         render :new
    #     end
    # end

end