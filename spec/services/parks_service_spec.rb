require 'rails_helper'

RSpec.describe ParksService do
  it 'returns a list of parks' do
    result = ParksService.get_list_of_parks('CO')

    expect(result).to have_key(:data)

    expect(result[:data].first).to have_key(:fullName)
    expect(result[:data].first[:fullName]).to be_a(String)

    expect(result[:data].first).to have_key(:description)
    expect(result[:data].first[:description]).to be_a(String)

    expect(result[:data].first).to have_key(:directionsInfo)
    expect(result[:data].first[:directionsInfo]).to be_a(String)

    expect(result[:data].first[:operatingHours].first).to have_key(:standardHours)
    expect(result[:data].first[:operatingHours].first[:standardHours]).to be_a(Hash)
  end
end
