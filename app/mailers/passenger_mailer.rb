class PassengerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.passenger_mailer.booking_confirmation_email.subject
  #
  def booking_confirmation_email(booking, passenger)
    @booking = booking
    @passenger = passenger
    @flight = booking.flight
    @arrival = booking.flight.arrive_airport
    @other_passengers = @booking.passengers.select { |pass| pass != @passenger }

    recipient = passenger.email
    subject = "Your Flight to #{@arrival.city} Is Booked"

    # mail to: "to@example.org", subject: "Your Flight to #{@arrival.city} Is Booked"
    mail to: recipient, subject: subject
  end

end
