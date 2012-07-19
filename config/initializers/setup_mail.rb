ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'guitartistas.herokuapp.com',
  :user_name            => 'guitartistas@gmail.com', # full email address (user@your.host.name.com)
  :password             => 'password',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}