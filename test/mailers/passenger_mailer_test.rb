require "test_helper"

class PassengerMailerTest < ActionMailer::TestCase
  test "booking_confirmation_email" do
    mail = PassengerMailer.booking_confirmation_email
    assert_equal "Booking confirmation email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
