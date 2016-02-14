class SampleMailer < ApplicationMailer

  default from: 'marlon@affordablehousingapp.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'affordablehousingapp.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
