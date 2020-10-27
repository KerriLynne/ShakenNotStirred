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
                redirect_to '/home'
            else
                flash.now[:notice] = @user.errors.full_messages.to_sentence 
                render :new
            end
        else
            redirect_to '/'
        end
    end

    def user_cocktails_index
        @cocktails = current_user.cocktails
    end
    

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :name, :email, :image, :uid) 
    end
end
