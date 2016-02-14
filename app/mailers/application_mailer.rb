class ApplicationMailer < ActionMailer::Base
	add_template_helper(EmailHelper)
  default from: "marlon@affordablehousingapp.com"
  layout 'mailer'
end
