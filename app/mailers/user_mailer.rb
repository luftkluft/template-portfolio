class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send_letter.subject
  #
  default from: "localhost@mailer.com"

  def send_letter(letter)
    @data_letter = letter
    mail to: "luftkluft@gmail.com", subject: "The redirected letter from shetar80"
  end

end
