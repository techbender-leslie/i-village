class UsersController < ApplicationController
  #before_filter :authorize
  #before_action :require_login, only: :new, :create

  def index
    # @users = User.order("apartment DESC")
    @users = User.order("created_at DESC")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      # render :new
      redirect_to sign_up_path
    end
  end

  def show
    #@user = current_user
    @user = User.find(params[:id])
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :apartment, :bio, :picture,:password, :password_confirmation)
  end
end
