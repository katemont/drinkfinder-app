class Mailer < ActionMailer::Base
  default from: "hello@drinkfindr.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.invitation.subject
  #
  def invitation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
