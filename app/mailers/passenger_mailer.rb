class PassengerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.passenger_mailer.booking_confirmation_email.subject
  #
  def booking_confirmation_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
