# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airport_attrs = {
    ap1:  {code: "ATL", city: "Atlanta",         state: "GA"}, 
    ap2:  {code: "DFW", city: "Dallas",          state: "TX"}, 
    ap3:  {code: "DEN", city: "Denver",          state: "CO"}, 
    ap4:  {code: "ORD", city: "Chicago",         state: "IL"}, 
    ap5:  {code: "LAX", city: "Los Angeles",     state: "CA"}, 
    ap6:  {code: "CLT", city: "Charlotte",       state: "NC"}, 
    ap7:  {code: "LAS", city: "Las Vegas",       state: "NV"}, 
    ap8:  {code: "PHX", city: "Phoenix",         state: "AZ"}, 
    ap9:  {code: "MCO", city: "Orlando",         state: "FL"}, 
    ap10: {code: "SEA", city: "Seattle",         state: "WA"} 
    # ap11: {code: "MIA", city: "Miami",           state: "FL"}, 
    # ap12: {code: "IAH", city: "Houston",         state: "TX"}, 
    # ap13: {code: "JFK", city: "New York City",   state: "NY"}, 
    # ap14: {code: "FLL", city: "Fort Lauderdale", state: "FL"}, 
    # ap15: {code: "EWR", city: "Newark",          state: "NJ"}
}
airport_attrs.each { |ap, attrs| Airport.find_or_create_by(attrs) }


# def random_time
#     time = "#{rand(4..22)}:#{rand(0..60)}"
#     if time.nil?
#         random_time
#     end
#     time
# end

def random_time
    begin
        time = "#{rand(4..22)}:#{rand(0..60)}".to_time.strftime("%I:%M %p")
    rescue ArgumentError
        time = random_time
    end
    time
end

def random_flight_num
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    alphabet[rand(0..25)].upcase + alphabet[rand(0..25)].upcase + rand(1000..9999).to_s
end

start = Date.today
finish = Date.today + 31.days




(start..finish).each do |date|
    Airport.all.each do |depart_port|
        Airport.all.each do |arrive_port|
            next if arrive_port == depart_port
            3.times { 
                Flight.create(
                    flight_num: random_flight_num, 
                    date: date.strftime("%d/%m/%Y"), 
                    time: random_time, 
                    depart_airport_id: depart_port.id, 
                    arrive_airport_id: arrive_port.id
                ) 
            }
        end
    end
end



