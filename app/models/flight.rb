class Flight < ApplicationRecord

    belongs_to :depart_airport, class_name: "Airport"
    belongs_to :arrive_airport, class_name: "Airport"

end
