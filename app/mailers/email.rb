class Email < ActionMailer::Base
  default from: "przemyslaw_szwajkowskiCRM@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.send_email.subject
  #
  def send_email(record)
    @greeting = "Hi"

    mail to: "przemyslaw8szwajkowski@gmail.com"
  end
end
