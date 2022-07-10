require 'rails_helper'

RSpec.describe ParksFacade do
  describe 'methods' do
    it 'returns a list of parks' do
      park = ParksFacade.get_list('CO')

      park.each do |park|
        expect(park).to be_a(Park)
      end
    end

    it 'returns the count of parks' do
      park_count = ParksFacade.parks_count('CO')

      expect(park_count).to be_a(String)
      expect(park_count.to_i).to be > 0
    end
  end
end
