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

  def basic_info
  end

  def update_basic_info
    @user.attributes = params[:user]
    if @user.save
      redirect_to step2_users_path
    else
      flash[:error] = "Something went wrong with your submission!"
      redirect_to :back and return
    end
  end

  def income_info
  end

  def update_income_info
    @user.attributes = params[:user]
    if @user.save
      redirect_to step3_users_path
    else
      flash[:error] = "Something went wrong with your submission!"
      redirect_to :back and return
    end
  end

  def dependent_info
    @dependent = Dependent.new
  end

  def update_dependent_info
    @dependent = Dependent.new
    @dependent.attributes = params[:dependent]
    if @dependent.save
      @dependent.user = @user
      @dependent.save
      redirect_to step4_users_path
    else
      flash[:error] = "Something went wrong with your submission!"
      redirect_to :back and return
    end
  end

  def background_info
  end

  def update_background_info
    @user.attributes = params[:user]
    if @user.save
      flash[:success] = "Thanks for your submission!"
      redirect_to profile_users_path
    else
      flash[:error] = "Something went wrong with your submission!"
      redirect_to :back and return
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