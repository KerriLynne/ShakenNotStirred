class ApplicationController < ActionController::Base

    helper_method :current_user
    helper_method :logged_in?

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        @user = User.find_by_id(session[:user_id]) if logged_in?
    end

    private

    # def require_login
    #     return head(:forbidden) unless session.include? :user_id
    # end


end
