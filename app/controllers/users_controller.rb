class UsersController < ApplicationController
  # before_filter :authenticate_user!, except: [:index, :new]

  def index
  end

  def new
    @user = User.new
  end

  def show
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to DwellWell!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end