class SessionsController < ApplicationController
  
  def home
  end
  
  def new
    @user = user.new
  end

  def create
    if @user = User.find_by(username: params[:user][:username])
      session[:user_id] = @user.id    
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  
end
