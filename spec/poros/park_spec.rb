require 'rails_helper'

RSpec.describe Park do
  it 'exists' do
    park_1 = Park.new({
                      fullName: "Abraham Lincoln Birthplace National Historical Park",
                      description: "honor the humble beginnings of our 16th president",
                      directionsInfo: "2 miles south of the town of Hodgenville on U.S. Highway 31E South.",
                      operatingHours: [
                        {
                          "exceptions": [
                       {
                           "exceptionHours": {},
                           "startDate": "2022-01-01",
                           "name": "New Year's Day",
                           "endDate": "2022-01-01"
                       },
                       {
                           "exceptionHours": {
                               "wednesday": "8:00AM - 5:30PM",
                               "monday": "8:00AM - 5:30PM",
                               "thursday": "8:00AM - 5:30PM",
                               "sunday": "8:00AM - 5:30PM",
                               "tuesday": "8:00AM - 5:30PM",
                               "friday": "8:00AM - 5:30PM",
                               "saturday": "8:00AM - 5:30PM"
                           },
                           "startDate": "2021-06-01",
                           "name": "Summer",
                           "endDate": "2021-08-31"
                       },
                     ],

                     "standardHours": {
                       "wednesday": "9:00AM - 4:00PM",
                       "monday": "9:00AM - 4:00PM",
                       "thursday": "9:00AM - 4:00PM",
                       "sunday": "9:00AM - 4:00PM",
                       "tuesday": "9:00AM - 4:00PM",
                       "friday": "9:00AM - 4:00PM",
                       "saturday": "9:00AM - 4:00PM"
                     }
                     } ] })

    expect(park_1).to be_a(Park)

  end

  it 'has attributes' do
    park_1 = Park.new({
                      fullName: "Abraham Lincoln Birthplace National Historical Park",
                      description: "honor the humble beginnings of our 16th president",
                      directionsInfo: "2 miles south of the town of Hodgenville on U.S. Highway 31E South.",
                      operatingHours: [
                        {
                          "exceptions": [
                       {
                           "exceptionHours": {},
                           "startDate": "2022-01-01",
                           "name": "New Year's Day",
                           "endDate": "2022-01-01"
                       },
                       {
                           "exceptionHours": {
                               "wednesday": "8:00AM - 5:30PM",
                               "monday": "8:00AM - 5:30PM",
                               "thursday": "8:00AM - 5:30PM",
                               "sunday": "8:00AM - 5:30PM",
                               "tuesday": "8:00AM - 5:30PM",
                               "friday": "8:00AM - 5:30PM",
                               "saturday": "8:00AM - 5:30PM"
                           },
                           "startDate": "2021-06-01",
                           "name": "Summer",
                           "endDate": "2021-08-31"
                       },
                     ],

                     "standardHours": {
                       "wednesday": "9:00AM - 4:00PM",
                       "monday": "9:00AM - 4:00PM",
                       "thursday": "9:00AM - 4:00PM",
                       "sunday": "9:00AM - 4:00PM",
                       "tuesday": "9:00AM - 4:00PM",
                       "friday": "9:00AM - 4:00PM",
                       "saturday": "9:00AM - 4:00PM"
                     }
                     } ] })
    expect(park_1.name).to eq('Abraham Lincoln Birthplace National Historical Park')
    expect(park_1.description).to eq("honor the humble beginnings of our 16th president")  
    expect(park_1.directions).to eq("2 miles south of the town of Hodgenville on U.S. Highway 31E South.") 
    expect(park_1.hours).to be_a(Hash)       
  end
end