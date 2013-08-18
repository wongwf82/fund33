ActionMailer::Base.smtp_settings = {
  :address              => 'smtp.sendgrid.net',
  :port                 => 587, # if you hardode the port number, and you're having trouble sending, try adding/removing quotes around the port number
  :domain               => 'heroku.com',
  :user_name            => 'app17558367@heroku.com',
  :password             => 'oe5r6fhy',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}