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


flight_attrs1 = {
    flight1:  { flight_num: "A11641", date: "01 Mar 2022", time: "4:39 PM",  depart_airport_id: 4,  arrive_airport_id: 6  }, 
    flight2:  { flight_num: "D62481", date: "01 Mar 2022", time: "6:25 AM",  depart_airport_id: 7,  arrive_airport_id: 8  }, 
    flight3:  { flight_num: "G14031", date: "01 Mar 2022", time: "8:15 AM",  depart_airport_id: 2,  arrive_airport_id: 10 }, 
    flight4:  { flight_num: "E18041", date: "01 Mar 2022", time: "5:40 AM",  depart_airport_id: 6,  arrive_airport_id: 13 }, 
    flight5:  { flight_num: "K25801", date: "01 Mar 2022", time: "7:45 AM",  depart_airport_id: 8,  arrive_airport_id: 3  }, 
    flight6:  { flight_num: "E74041", date: "02 Mar 2022", time: "8:46 AM",  depart_airport_id: 10, arrive_airport_id: 8  }, 
    flight7:  { flight_num: "R25431", date: "02 Mar 2022", time: "9:13 AM",  depart_airport_id: 13, arrive_airport_id: 4  }, 
    flight8:  { flight_num: "H18871", date: "02 Mar 2022", time: "5:40 AM",  depart_airport_id: 3,  arrive_airport_id: 6  }, 
    flight9:  { flight_num: "K15041", date: "02 Mar 2022", time: "7:45 AM",  depart_airport_id: 8,  arrive_airport_id: 1  }, 
    flight10: { flight_num: "D12871", date: "02 Mar 2022", time: "10:59 AM", depart_airport_id: 4,  arrive_airport_id: 2  }, 
    flight11: { flight_num: "G15701", date: "03 Mar 2022", time: "11:28 AM", depart_airport_id: 6,  arrive_airport_id: 9  }, 
    flight12: { flight_num: "V10371", date: "03 Mar 2022", time: "6:00 AM",  depart_airport_id: 1,  arrive_airport_id: 11 }, 
    flight13: { flight_num: "D56801", date: "03 Mar 2022", time: "9:07 PM",  depart_airport_id: 2,  arrive_airport_id: 12 }, 
    flight14: { flight_num: "K10771", date: "03 Mar 2022", time: "10:56 PM", depart_airport_id: 9,  arrive_airport_id: 3  }, 
    flight15: { flight_num: "D44481", date: "03 Mar 2022", time: "10:39 PM", depart_airport_id: 11, arrive_airport_id: 1  }, 
    flight16: { flight_num: "J58701", date: "04 Mar 2022", time: "12:11 PM", depart_airport_id: 12, arrive_airport_id: 5  }, 
    flight17: { flight_num: "D20671", date: "04 Mar 2022", time: "6:00 PM",  depart_airport_id: 3,  arrive_airport_id: 7  }, 
    flight18: { flight_num: "D65121", date: "04 Mar 2022", time: "9:07 PM",  depart_airport_id: 1,  arrive_airport_id: 11 }, 
    flight19: { flight_num: "J60671", date: "04 Mar 2022", time: "11:47 PM", depart_airport_id: 5,  arrive_airport_id: 12 }, 
    flight20: { flight_num: "R19911", date: "04 Mar 2022", time: "7:23 PM",  depart_airport_id: 7,  arrive_airport_id: 3  }, 
    flight21: { flight_num: "C65441", date: "05 Mar 2022", time: "9:32 AM",  depart_airport_id: 11, arrive_airport_id: 1  }, 
    flight22: { flight_num: "S18771", date: "05 Mar 2022", time: "10:59 AM", depart_airport_id: 12, arrive_airport_id: 15 }, 
    flight23: { flight_num: "F65481", date: "05 Mar 2022", time: "11:28 PM", depart_airport_id: 3,  arrive_airport_id: 2  }, 
    flight24: { flight_num: "I46541", date: "05 Mar 2022", time: "7:23 PM",  depart_airport_id: 1,  arrive_airport_id: 7  }, 
    flight25: { flight_num: "X85241", date: "05 Mar 2022", time: "10:30 PM", depart_airport_id: 15, arrive_airport_id: 4  },  
    flight26: { flight_num: "A11642", date: "06 Mar 2022", time: "4:39 PM",  depart_airport_id: 4,  arrive_airport_id: 6  }, 
    flight27: { flight_num: "D62482", date: "06 Mar 2022", time: "6:25 AM",  depart_airport_id: 7,  arrive_airport_id: 8  }, 
    flight28: { flight_num: "G14032", date: "06 Mar 2022", time: "8:15 AM",  depart_airport_id: 2,  arrive_airport_id: 10 }, 
    flight29: { flight_num: "E18042", date: "06 Mar 2022", time: "5:40 AM",  depart_airport_id: 6,  arrive_airport_id: 13 }
}


flight_attrs2 = {
    flight30: { flight_num: "K25802", date: "06 Mar 2022", time: "7:45 AM",  depart_airport_id: 8,  arrive_airport_id: 3  }, 
    flight31: { flight_num: "E74042", date: "07 Mar 2022", time: "8:46 AM",  depart_airport_id: 10, arrive_airport_id: 8  }, 
    flight32: { flight_num: "R25432", date: "07 Mar 2022", time: "9:13 AM",  depart_airport_id: 13, arrive_airport_id: 4  }, 
    flight33: { flight_num: "H18872", date: "07 Mar 2022", time: "5:40 AM",  depart_airport_id: 3,  arrive_airport_id: 6  }, 
    flight34: { flight_num: "K15042", date: "07 Mar 2022", time: "7:45 AM",  depart_airport_id: 8,  arrive_airport_id: 1  }, 
    flight35: { flight_num: "D12872", date: "07 Mar 2022", time: "10:59 AM", depart_airport_id: 4,  arrive_airport_id: 2  }, 
    flight36: { flight_num: "G15702", date: "08 Mar 2022", time: "11:28 AM", depart_airport_id: 6,  arrive_airport_id: 9  }, 
    flight37: { flight_num: "V10372", date: "08 Mar 2022", time: "6:00 AM",  depart_airport_id: 4,  arrive_airport_id: 11 }, 
    flight38: { flight_num: "D56802", date: "08 Mar 2022", time: "9:07 PM",  depart_airport_id: 7,  arrive_airport_id: 12 }, 
    flight39: { flight_num: "K10772", date: "08 Mar 2022", time: "10:56 PM", depart_airport_id: 2,  arrive_airport_id: 3  }, 
    flight40: { flight_num: "D44482", date: "08 Mar 2022", time: "10:39 PM", depart_airport_id: 6,  arrive_airport_id: 6  }, 
    flight41: { flight_num: "J58702", date: "09 Mar 2022", time: "12:11 PM", depart_airport_id: 8,  arrive_airport_id: 8  }, 
    flight42: { flight_num: "D20672", date: "09 Mar 2022", time: "6:00 PM",  depart_airport_id: 10, arrive_airport_id: 10 }, 
    flight43: { flight_num: "D65122", date: "09 Mar 2022", time: "9:07 PM",  depart_airport_id: 13, arrive_airport_id: 13 }, 
    flight44: { flight_num: "J60672", date: "09 Mar 2022", time: "11:47 PM", depart_airport_id: 3,  arrive_airport_id: 3  }, 
    flight45: { flight_num: "R19912", date: "09 Mar 2022", time: "7:23 PM",  depart_airport_id: 8,  arrive_airport_id: 8  }, 
    flight46: { flight_num: "C65442", date: "10 Mar 2022", time: "9:32 AM",  depart_airport_id: 4,  arrive_airport_id: 4  }, 
    flight47: { flight_num: "S18772", date: "10 Mar 2022", time: "10:59 AM", depart_airport_id: 6,  arrive_airport_id: 6  }, 
    flight48: { flight_num: "F65482", date: "10 Mar 2022", time: "11:28 PM", depart_airport_id: 1,  arrive_airport_id: 1  }, 
    flight49: { flight_num: "I46542", date: "10 Mar 2022", time: "7:23 PM",  depart_airport_id: 2,  arrive_airport_id: 2  }, 
    flight50: { flight_num: "X85243", date: "10 Mar 2022", time: "10:30 PM", depart_airport_id: 9,  arrive_airport_id: 9  }, 
    flight51: { flight_num: "A11643", date: "11 Mar 2022", time: "4:39 PM",  depart_airport_id: 11, arrive_airport_id: 11 }, 
    flight52: { flight_num: "D62483", date: "11 Mar 2022", time: "6:25 AM",  depart_airport_id: 12, arrive_airport_id: 12 }, 
    flight53: { flight_num: "G14033", date: "11 Mar 2022", time: "8:15 AM",  depart_airport_id: 3,  arrive_airport_id: 3  }, 
    flight54: { flight_num: "E18043", date: "11 Mar 2022", time: "5:40 AM",  depart_airport_id: 1,  arrive_airport_id: 1  }, 
    flight55: { flight_num: "K25803", date: "11 Mar 2022", time: "7:45 AM",  depart_airport_id: 5,  arrive_airport_id: 5  }, 
    flight56: { flight_num: "E74043", date: "12 Mar 2022", time: "8:46 AM",  depart_airport_id: 7,  arrive_airport_id: 7  }, 
    flight57: { flight_num: "R25433", date: "12 Mar 2022", time: "9:13 AM",  depart_airport_id: 11, arrive_airport_id: 11 }, 
    flight58: { flight_num: "H18873", date: "12 Mar 2022", time: "5:40 AM",  depart_airport_id: 12, arrive_airport_id: 12 }, 
    flight59: { flight_num: "K15043", date: "12 Mar 2022", time: "7:45 AM",  depart_airport_id: 3,  arrive_airport_id: 1  }
}
    
flight_attrs3 = {   
    flight60: { flight_num: "D12873", date: "12 Mar 2022", time: "10:59 AM", depart_airport_id: 4,  arrive_airport_id: 5  }, 
    flight61: { flight_num: "G15703", date: "13 Mar 2022", time: "11:28 AM", depart_airport_id: 7,  arrive_airport_id: 7  }, 
    flight62: { flight_num: "V10373", date: "13 Mar 2022", time: "6:00 AM",  depart_airport_id: 2,  arrive_airport_id: 11 }, 
    flight63: { flight_num: "D56803", date: "13 Mar 2022", time: "9:07 PM",  depart_airport_id: 6,  arrive_airport_id: 12 }, 
    flight64: { flight_num: "K10773", date: "13 Mar 2022", time: "10:56 PM", depart_airport_id: 8,  arrive_airport_id: 3  }, 
    flight65: { flight_num: "D44483", date: "13 Mar 2022", time: "10:39 PM", depart_airport_id: 10, arrive_airport_id: 1  }, 
    flight66: { flight_num: "J58703", date: "14 Mar 2022", time: "12:11 PM", depart_airport_id: 13, arrive_airport_id: 15 }, 
    flight67: { flight_num: "D20673", date: "14 Mar 2022", time: "6:00 PM",  depart_airport_id: 3,  arrive_airport_id: 2  }, 
    flight68: { flight_num: "D65123", date: "14 Mar 2022", time: "9:07 PM",  depart_airport_id: 8,  arrive_airport_id: 7  }, 
    flight69: { flight_num: "J60673", date: "14 Mar 2022", time: "11:47 PM", depart_airport_id: 4,  arrive_airport_id: 9  }, 
    flight70: { flight_num: "R19913", date: "14 Mar 2022", time: "7:23 PM",  depart_airport_id: 6,  arrive_airport_id: 11 }, 
    flight71: { flight_num: "C65443", date: "15 Mar 2022", time: "9:32 AM",  depart_airport_id: 1,  arrive_airport_id: 12 }, 
    flight72: { flight_num: "S18773", date: "15 Mar 2022", time: "10:59 AM", depart_airport_id: 2,  arrive_airport_id: 3  }, 
    flight73: { flight_num: "F65483", date: "15 Mar 2022", time: "11:28 PM", depart_airport_id: 9,  arrive_airport_id: 1  }, 
    flight74: { flight_num: "I46544", date: "15 Mar 2022", time: "7:23 PM",  depart_airport_id: 11, arrive_airport_id: 5  }, 
    flight75: { flight_num: "X85244", date: "15 Mar 2022", time: "10:30 PM", depart_airport_id: 12, arrive_airport_id: 7  }, 
    flight76: { flight_num: "A11644", date: "16 Mar 2022", time: "4:39 PM",  depart_airport_id: 3,  arrive_airport_id: 11 }, 
    flight77: { flight_num: "D62484", date: "16 Mar 2022", time: "6:25 AM",  depart_airport_id: 1,  arrive_airport_id: 12 }, 
    flight78: { flight_num: "G14034", date: "16 Mar 2022", time: "8:15 AM",  depart_airport_id: 5,  arrive_airport_id: 3  }, 
    flight79: { flight_num: "E18044", date: "16 Mar 2022", time: "5:40 AM",  depart_airport_id: 7,  arrive_airport_id: 1  }, 
    flight80: { flight_num: "K25804", date: "16 Mar 2022", time: "7:45 AM",  depart_airport_id: 13, arrive_airport_id: 15 },
    flight81: { flight_num: "E74044", date: "17 Mar 2022", time: "8:46 AM",  depart_airport_id: 3,  arrive_airport_id: 2  }, 
    flight82: { flight_num: "R25434", date: "17 Mar 2022", time: "9:13 AM",  depart_airport_id: 8,  arrive_airport_id: 7  }, 
    flight83: { flight_num: "H18874", date: "17 Mar 2022", time: "5:40 AM",  depart_airport_id: 4,  arrive_airport_id: 6  }, 
    flight84: { flight_num: "K15044", date: "17 Mar 2022", time: "7:45 AM",  depart_airport_id: 6,  arrive_airport_id: 1  }, 
    flight85: { flight_num: "D12874", date: "17 Mar 2022", time: "10:59 AM", depart_airport_id: 1,  arrive_airport_id: 2  }, 
    flight86: { flight_num: "G15704", date: "18 Mar 2022", time: "11:28 AM", depart_airport_id: 2,  arrive_airport_id: 9  }, 
    flight87: { flight_num: "V10374", date: "18 Mar 2022", time: "6:00 AM",  depart_airport_id: 9,  arrive_airport_id: 11 }, 
    flight88: { flight_num: "D56804", date: "18 Mar 2022", time: "9:07 PM",  depart_airport_id: 11, arrive_airport_id: 12 }, 
    flight89: { flight_num: "K10774", date: "18 Mar 2022", time: "10:56 PM", depart_airport_id: 12, arrive_airport_id: 3  }, 
    flight90: { flight_num: "D44484", date: "18 Mar 2022", time: "10:39 PM", depart_airport_id: 3,  arrive_airport_id: 1  }, 
    flight91: { flight_num: "J58704", date: "19 Mar 2022", time: "12:11 PM", depart_airport_id: 1,  arrive_airport_id: 5  }, 
    flight92: { flight_num: "D20674", date: "19 Mar 2022", time: "6:00 PM",  depart_airport_id: 5,  arrive_airport_id: 7  }, 
    flight93: { flight_num: "D65124", date: "19 Mar 2022", time: "9:07 PM",  depart_airport_id: 7,  arrive_airport_id: 11 }, 
    flight94: { flight_num: "J60674", date: "19 Mar 2022", time: "11:47 PM", depart_airport_id: 11, arrive_airport_id: 12 }, 
    flight95: { flight_num: "R19914", date: "19 Mar 2022", time: "7:23 PM",  depart_airport_id: 12, arrive_airport_id: 3  }, 
    flight96: { flight_num: "C65444", date: "20 Mar 2022", time: "9:32 AM",  depart_airport_id: 3,  arrive_airport_id: 1  }, 
    flight97: { flight_num: "S18774", date: "20 Mar 2022", time: "10:59 AM", depart_airport_id: 1,  arrive_airport_id: 15 }, 
    flight98: { flight_num: "F65485", date: "20 Mar 2022", time: "11:28 PM", depart_airport_id: 15, arrive_airport_id: 2  }, 
    flight99: { flight_num: "I46545", date: "20 Mar 2022", time: "7:23 PM",  depart_airport_id: 4,  arrive_airport_id: 7  }
}

flight_attrs1.each { |fl, attrs| Flight.find_or_create_by(attrs) }
flight_attrs2.each { |fl, attrs| Flight.find_or_create_by(attrs) }
flight_attrs3.each { |fl, attrs| Flight.find_or_create_by(attrs) }