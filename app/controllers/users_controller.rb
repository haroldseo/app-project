class UsersController < ApplicationController
  before_action :authorize, only: [:edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to cafes_path 
    else
      flash[:danger] = "Please check all fields"
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
