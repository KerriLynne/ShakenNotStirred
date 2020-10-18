class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        if params[:password] == params[:password_confirmation] 
            params.delete(:password_confirmation)
            params.delete("Sign Up")
            @user = User.new(user_params)
            if @user.save
                session[:user_id] = @user.id
                # redirect_to '/welcome/home'
                redirect_to '/home'
            else
                flash[:notice] = @user.errors.full_messages.to_sentence 
                # redirect_to '/signup'
                render :new
            end
        else
            # redirect_to '/welcome'
            redirect_to '/'
        end
    end

    def user_cocktails_index
        # byebug
        # @cocktails = CocktailIngredient.find_by(params[:cocktail_id])
        # @user_cocktails = UserCocktail.find_by(params[:cocktail_id])
        @cocktails = current_user.cocktails
        # byebug
    end
    
    
    # def create
    #     if @user = User.create(user_params)
    #         session[:user_id] = @user.id
    #         redirect_to '/welcome'
    #     else
    #         flash[:notice] = @user.errors.full_messages.to_sentence #added
    #         render :new #added
    #     end
    # end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :name, :email, :image, :uid) 
    end
end
