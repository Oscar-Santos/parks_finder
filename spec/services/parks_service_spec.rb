require 'rails_helper'

RSpec.describe ParksService do
   it 'returns a list of parks' do
    parks_list = ParksService.get_list_of_parks('CO')
    
    expect(parks_list).to have_key(:data)

    expect(parks_list[:data].first).to have_key(:fullName)
    expect(parks_list[:data].first[:fullName]).to be_a(String)

    expect(parks_list[:data].first).to have_key(:description)
    expect(parks_list[:data].first[:description]).to be_a(String)

    expect(parks_list[:data].first).to have_key(:directionsInfo)
    expect(parks_list[:data].first[:directionsInfo]).to be_a(String)

    expect(parks_list[:data].first[:operatingHours].first).to have_key(:standardHours)
    expect(parks_list[:data].first[:operatingHours].first[:standardHours]).to be_a(Hash)
   end
end