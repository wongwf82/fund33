ActionMailer::Base.smtp_settings = {
  :address              => ENV['MAIL_SERVER'],
  :port                 => ENV['MAIL_SERVER_PORT'], # if you hardode the port number, and you're having trouble sending, try adding/removing quotes around the port number
  :domain               => ENV['MAIL_DOMAIN'],
  :user_name            => ENV['MAIL_USERNAME'],
  :password             => ENV['MAIL_PASSWORD'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}
