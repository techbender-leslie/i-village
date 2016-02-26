class SessionsController < ApplicationController
  def new
    redirect_to current_user if current_user
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user 
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Logged In!"
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, :notice => "Logged out!"
  end
  
end
