class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def index
  end

  def new
    @user = current_user
  end

  def show
    @user = current_user
  end

  def create
  end

  def update

  end
end