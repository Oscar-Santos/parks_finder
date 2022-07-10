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

RSpec.describe 'Parks Index Page' do
  it 'returns a list of parks' do
    parks_count = ParksFacade.parks_count('TN')
    park = ParksFacade.get_list('TN').first

    visit root_path
    select 'Tennessee', from: 'state'

    click_on('Find Parks')

    expect(page).to have_content(parks_count)

    expect(page).to have_content(park.name)
    expect(page).to have_content(park.description)
    expect(page).to have_content(park.direction)
    expect(page).to have_content(park.hours_of_operation)


  end
end
