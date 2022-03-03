class Airport < ApplicationRecord

    has_many :departures, foreign_key: "depart_airport_id", class_name: "Flight"
    has_many :arrivals, foreign_key: "arrive_airport_id", class_name: "Flight"



    def code_and_location
        self.code + " " + self.city + ", " + self.state
    end

    def location
        self.city + ", " + self.state
    end


end
