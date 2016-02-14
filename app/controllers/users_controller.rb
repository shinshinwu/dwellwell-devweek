class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :new, :create]
  before_filter :set_user_context, except: [:index, :new, :create]

  def index
  end

  def new
    @user = User.new
  end

  def show
  end

  def basic_info

  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to DwellWell!"
      if @user.completed_profile?
        redirect_to @user
      else
        redirect_to step1_users_path
      end
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

  def set_user_context
    @user = current_user
  end

end