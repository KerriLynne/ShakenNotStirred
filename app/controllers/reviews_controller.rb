class ReviewsController < ApplicationController
    before_action :require_login
    before_action :find_cocktail, only: [:new, :create]
    before_action :authorize

    def new
        @review = Review.new(cocktail: @cocktail)
    end

    def create
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


    private


    def find_cocktail
        @cocktail = Cocktail.find_by_id(params[:cocktail_id])
    end

    def authorize
        if @cocktail.can_edit?(current_user)
            head :unauthorized
        end
    end


end