class Flight < ApplicationRecord

    belongs_to :depart_airport, class_name: "Airport"
    belongs_to :arrive_airport, class_name: "Airport"
    has_many :bookings


    def display_text
        self.time.to_time.strftime("%I:%M %p") + " departure from " + self.arrive_airport.code_and_location + " arrives at " + self.arrive_airport.code_and_location
    end
end
