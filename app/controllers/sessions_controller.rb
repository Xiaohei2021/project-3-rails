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

  # def omniauth
  #   user = User.from_omniauth(auth)
  #   if user.valid?
  #       session[:user_id] = user.id
  #       flash[:message] = "You are now logged in"
  #       redirect_to user_path
  #   end
  # end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  # private

  # def auth
  #   request.env['omniauth.auth']
  # end

end
