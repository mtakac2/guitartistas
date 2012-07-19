ActionMailer::Base.smtp_settings = {
  :address  => "smtp.gmail.net",
  :port  => 25,
  :user_name  => "guitartistas@gmail.com",
  :password  => "neustart",
  :authentication  => :login
}