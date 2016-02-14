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
end
