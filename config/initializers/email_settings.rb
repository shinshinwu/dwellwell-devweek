ActionMailer::Base.smtp_settings = {
    user_name: 'SMTP_Injection',
    password: ENV['SPARKPOST_API_KEY'],
    address: ENV['SPARKPOST_SMTP_HOST'],
    port: ENV['SPARKPOST_SMTP_PORT'],
    enable_starttls_auto: true,
    format: :html,
    from: 'marlon@affordablehousingapp.com'
}