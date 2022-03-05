# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/passenger_mailer/booking_confirmation_email
  def booking_confirmation_email
    PassengerMailer.booking_confirmation_email
  end

end
