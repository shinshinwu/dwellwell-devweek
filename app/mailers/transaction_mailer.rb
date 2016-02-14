class TransactionMailer < ApplicationMailer
default from: 'marlon@affordablehousingapp.com'

  def application_approved(user)
  	@user = user
  	    mail(to: @user.email, subject: 'RE: your DwellWell application for affordable housing')
  end

  def application_denied(user)
  	@user = user
  	    mail(to: @user.email, subject: 'RE: your DwellWell application for affordable housing')
  end

  def confirm_email(user)
  	@user = user
  	    mail(to: @user.email, subject: 'RE: Welcome to DwellWell !')
  end

  def vendor_email(vendor, user, email_info, email_link)
    @vendor = vendor
    @user = user
    @email_info = email_info
    @email_link = email_link

    mail(to: @vendor.email, subject: 'you have a new inquiry')
  end
end
