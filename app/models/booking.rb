class Booking < ApplicationRecord
    
    has_many :passengers_bookings
    has_many :passengers, through: :passengers_bookings
    belongs_to :flight
    accepts_nested_attributes_for :passengers

end
