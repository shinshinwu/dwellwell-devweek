class DwellingsController < ApplicationController
  def index
    @dwellings = Dwelling.all
    @user = current_user
  end

end