require 'rails_helper'

RSpec.describe Park do
  it 'exist' do
    data = {
            "id": "D35004EF-5F5A-4DA4-8716-5141BE5C933C",
            "url": "https://www.nps.gov/amch/index.htm",
            "fullName": "Amache National Historic Site",
            "parkCode": "amch",
            "description": "Amache, also known as the Granada Relocation Center, near Granada, Colorado was one of ten incarceration sites established by the War Relocation Authority during World War II to unjustly incarcerate Japanese Americans. Over 10,000 people, most American citizens, were incarcerated at Amache from 1942-1945. Amache - a place to reflect, recommit, and further the pursuit of freedom and justice.",
            "latitude": "38.04962",
            "longitude": "-102.32903",
            "latLong": "lat:38.04962, long:-102.32903",
            "activities": [],
            "states": "CO",
            "entrancePasses": [],
            "fees": [],
            "directionsInfo": "Amache National Historic Site is in southeastern Colorado about 1.5 miles west of the town of Granada, 17.5 miles east of Lamar, and half an hour drive from the Kansas border. The site is located off Highway 385/50 along the Santa Fe Trail.",
            "directionsUrl": "https://www.nps.gov/amch/planyourvisit/directions.htm",
            "operatingHours": [
                {
                    "exceptions": [],
                    "description": "The site is currently open to the public with limited hours and services. For the foreseeable future, the site will continue to be managed by the Amache Preservation Society in cooperation with the town of Granada. The site currently consists of a cemetery, a monument, building foundations, and landscaping. Interpretive panels and a downloadable self-guided auto tour are available on amache.org to assist with navigation of the site.",
                    "standardHours": {
                        "wednesday": "Sunrise to Sunset",
                        "monday": "Sunrise to Sunset",
                        "thursday": "Sunrise to Sunset",
                        "sunday": "Sunrise to Sunset",
                        "tuesday": "Sunrise to Sunset",
                        "friday": "Sunrise to Sunset",
                        "saturday": "Sunrise to Sunset"
                    }}

                  ]}

    park = Park.new(data)
    expect(park).to be_a(Park)

    expect(park.name).to eq("Amache National Historic Site")
      expect(park.description).to eq("Amache, also known as the Granada Relocation Center, near Granada, Colorado was one of ten incarceration sites established by the War Relocation Authority during World War II to unjustly incarcerate Japanese Americans. Over 10,000 people, most American citizens, were incarcerated at Amache from 1942-1945. Amache - a place to reflect, recommit, and further the pursuit of freedom and justice.")
      expect(park.direction).to eq("Amache National Historic Site is in southeastern Colorado about 1.5 miles west of the town of Granada, 17.5 miles east of Lamar, and half an hour drive from the Kansas border. The site is located off Highway 385/50 along the Santa Fe Trail.")
      expect(park.hours_of_operation).to eq({
          "wednesday": "Sunrise to Sunset",
          "monday": "Sunrise to Sunset",
          "thursday": "Sunrise to Sunset",
          "sunday": "Sunrise to Sunset",
          "tuesday": "Sunrise to Sunset",
          "friday": "Sunrise to Sunset",
          "saturday": "Sunrise to Sunset"
      })
  end
end
