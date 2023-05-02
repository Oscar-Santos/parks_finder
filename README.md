# UNITED STATES NATIONAL PARKS FINDER
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

![image_1](https://user-images.githubusercontent.com/83252572/233377821-faeb2f79-c221-42c2-9cc8-cfa97100e0a8.jpeg)


#### Overview
Welcome to the USA National Parks Finder application! This app is designed to help you find the number of national parks by state and also gives you the address, a short description, directions, and hours of operation for each national park.

Explore the incredible natural beauty of the United States of America, one national park at a time. With over 400 parks to choose from, each with its own unique landscapes, wildlife, and cultural heritage, the USA National Parks Finder app is your go-to guide for planning your next adventure. Whether you're looking to hike through mountains, marvel at waterfalls, or spot some of the country's rarest wildlife, this app has everything you need to plan the perfect trip. So, let's get started and discover the wonders of the USA's national parks!

I am using the API from the US Government's National Park Service website.


#### Local Set Up
- `fork` then `git clone` this repository
- `cd parks_finder` into the root directory
- `bundle install` to install dependencies
- `rails db:{create,migrate}`
- `rails s` to start your server on `localhost:3000`

#### Framework
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)" />  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  </br>
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
  
</p>

#### Gems
<p>
  <img src="https://img.shields.io/badge/rspec--rails-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
</p>

#### Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>

## Endpoints

1)   #### Request
`GET https://developer.nps.gov/api/v1/parks?&api_key=HCLwOsO9eeCSY8vOfbyFvyWWla5GygJkcQWAfK06&stateCode=CO`

#### Response in JSON
```
{
    "total": "17",
    "limit": "50",
    "start": "0",
    "data": [
        {
            "id": "D35004EF-5F5A-4DA4-8716-5141BE5C933C",
            "url": "https://www.nps.gov/amch/index.htm",
            "fullName": "Amache National Historic Site",
            "parkCode": "amch",
            "description": "Amache, also known as the Granada Relocation Center, near Granada, Colorado was one of ten incarceration sites established by the War Relocation Authority during World War II to unjustly incarcerate Japanese Americans. Over 10,000 people, most American citizens, were incarcerated at Amache from 1942-1945. Amache - a place to reflect, recommit, and further the pursuit of freedom and justice.",
            "latitude": "38.04962",
            "longitude": "-102.32903",
            "latLong": "lat:38.04962, long:-102.32903",
            "activities": [],
            "topics": [
                {
                    "id": "351EE154-87AA-46B0-BBA1-ED604368ACE9",
                    "name": "Incarceration"
                },
                {
                    "id": "367BC636-6F02-4F1B-BEAA-5A20E46C7207",
                    "name": "Japanese-American Internment"
                }
            ],
            "states": "CO",
            "contacts": {
                "phoneNumbers": [],
                "emailAddresses": [
                    {
                        "description": "Park Information",
                        "emailAddress": "Amache_visitor_information@nps.gov"
                    }
                ]
            },
            },
            "entranceFees": [
                {
                    "cost": "0.00",
                    "description": "There are no entrance fees.",
                    "title": "Entrance Fees"
                }
            ],
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
                    },
                    "name": "Amache National Historic Site"
                }
            ],
            "addresses": [
                {
                    "postalCode": "81041",
                    "city": "Granada",
                    "stateCode": "CO",
                    "line1": "County Rd 23 5/10",
                    "type": "Physical",
                    "line3": "",
                    "line2": ""
                }
```


#### Postman Link

[Postman Link](https://api.postman.com/collections/20100024-aaca830e-96a3-4659-a525-6e6d685bdde9?access_key=PMAT-01GYFFE70BZ9R8GAESPYFAP7GT)

