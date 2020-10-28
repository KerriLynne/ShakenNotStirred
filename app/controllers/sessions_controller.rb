class SessionsController < ApplicationController
  before_action :require_login, :only => [:home]

  def new 
  end

  def create
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to '/home'
      else
        flash[:notice] = "Username and/or password invalid. Try logging in again."
        redirect_to '/login'
    end
  end

  def facebook_auth
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
      u.username = auth['info']['email']
      u.password = auth['uid']
      u.password_confirmation = auth['uid']
    end

    session[:user_id] = @user.id
    redirect_to '/home'
  end

  def welcome
  end

  def home
    @user_id = session[:user_id]
    
  end

  def destroy
    session.clear
    redirect_to '/'
  end


private

  def auth
    request.env['omniauth.auth']
  end



end