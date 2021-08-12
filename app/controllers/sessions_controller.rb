class SessionsController < ApplicationController
  
  def home
  end
  
  def new
  end

  def create
    # byebug
    user = User.find_by(username: params[:user][:username])
      # if user && user.authenticate(params[:user][:password])
      if user.try(:authenticate, params[:user][:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
    else
      flash[:message] = "Log In Failed, please try again"
      redirect_to "/login"
    end
  end

  def omniauth_google
    # byebug
    user = User.from_omniauth_google(auth)
    if user.valid?
        session[:user_id] = user.id
        flash[:message] = "You are now logged in via Google"
        redirect_to user_path(user)
    end
  end

  def omniauth_github
    # byebug
    user = User.from_omniauth_github(auth)
    if user.valid?
        session[:user_id] = user.id
        flash[:message] = "You are now logged in via Github"
        redirect_to user_path(user)
    end
  end

  def omniauth_facebook
    # byebug
    user = User.from_omniauth_facebook(auth)
    if user.valid?
        session[:user_id] = user.id
        flash[:message] = "You are now logged in via Facebook"
        redirect_to user_path(user)
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
