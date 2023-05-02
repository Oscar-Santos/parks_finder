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

RSpec.describe Park do
    describe 'List of National Parks' do
        it 'returns a list of national parks' do
            park = ParksFacade.find_parks('TN').first
        end
    end
end