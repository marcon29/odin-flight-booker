class Booking < ApplicationRecord
    has_many :passengers_bookings
    has_many :passengers, through: :passengers_bookings
    belongs_to :flight
    accepts_nested_attributes_for :passengers

    def create_booking_confirmation
        alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        alphabet[rand(0..25)].upcase + alphabet[rand(0..25)].upcase + rand(10..99).to_s + alphabet[rand(0..25)].upcase + alphabet[rand(0..25)].upcase + rand(10..99).to_s
    end
end
