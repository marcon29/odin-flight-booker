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
    ap10: {code: "SEA", city: "Seattle",         state: "WA"}, 
    ap11: {code: "MIA", city: "Miami",           state: "FL"}, 
    ap12: {code: "IAH", city: "Houston",         state: "TX"}, 
    ap13: {code: "JFK", city: "New York City",   state: "NY"}, 
    ap14: {code: "FLL", city: "Fort Lauderdale", state: "FL"}, 
    ap15: {code: "EWR", city: "Newark",          state: "NJ"}
}

airport_attrs.each { |ap, attrs| Airport.find_or_create_by(attrs) }



