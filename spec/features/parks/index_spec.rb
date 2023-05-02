# As a user,
# When I select "Tennessee" from the form,
# (Note: use the existing form)
# And click on "Find Parks",
# I see the total of parks found,
# And for each park I see:
# - full name of the park
# - description
# - direction info
# - standard hours for operation
require 'rails_helper'

RSpec.describe Park do
    describe 'List of National Parks' do
        it 'returns a list of national parks' do
            park = ParksFacade.get_list('TN').first
            parks_count = ParksFacade.parks_count('TN')

            visit root_path

            select 'Tennessee', from: 'state'

            click_on 'Find Parks'
            expect(page).to have_content(park.name)
            expect(page).to have_content(park.description)
            expect(page).to have_content(park.directions)
            expect(page).to have_content(park.hours)

            expect(page).to have_content(parks_count)
        end
    end
end