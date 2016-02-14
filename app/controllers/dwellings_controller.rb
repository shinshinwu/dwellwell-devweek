class DwellingsController < ApplicationController
  def index
    @dwellings = Dwelling.all
    @user = current_user

		vendor = Vendor.last
		email_string = '@hello.affordablehousingapp.com'
		@emailstring = vendor.masked_vendor_id + email_string
  end

end