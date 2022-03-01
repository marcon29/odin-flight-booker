class Airport < ApplicationRecord
    # has_many :departures
    # has_many :arrivals

    # has_many :departures, source: :depart_airport_id
    # has_many :arrivals, source: :arrive_airport_id



    def location
        self.city + ", " + self.state
    end
end
