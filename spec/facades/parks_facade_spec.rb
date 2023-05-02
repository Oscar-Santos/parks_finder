require 'rails_helper'

RSpec.describe ParksFacade do
   it 'can return a list of parks' do
    parks = ParksFacade.get_list('CO')
    
    parks.each do |park|
        expect(park).to be_a(Park)
    end
   end

   it 'can find the number of parks' do
    count_parks = ParksFacade.parks_count('CO')
    
    expect(count_parks).to be_a(String)
    expect(count_parks.to_i).to be > 0
   end
end