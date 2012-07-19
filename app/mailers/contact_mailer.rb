class ContactMailer < ActionMailer::Base
  # default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #
  def user_message(message)
    @email = message

    mail from: @email.email, to: "guitartistas@gmail.com", subject: @email.subject
  end
end
