class Passenger < ApplicationRecord
    has_many :passengers_bookings
    has_many :bookings, through: :passengers_bookings
    
    has_many :flights, through: :bookings

end
