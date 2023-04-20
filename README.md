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
`GET /api/v1/customers/1/subscriptions`
#### Response
```json
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "customer_id": 1,
                "tea_id": 1,
                "title": "My Dongding Subscription",
                "price": 5.75,
                "status": "active",
                "frequency": "monthly"
            }
        },
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "customer_id": 1,
                "tea_id": 2,
                "title": "My Shincha Subscription",
                "price": 6.9,
                "status": "canceled",
                "frequency": "annually"
            }
        }
    ]
}
```

2)    #### Request
`POST /api/v1/customers/1/subscriptions`
##### Request Body
```json
    {
      "customer_id": 1,
      "tea_id": 1,
      "title": "tea.title",
      "price": 6.9,
      "status": "active",
      "frequency": "annually"
    }
```
#### Response
```json
{
    "data": {
        "id": "14",
        "type": "subscription",
        "attributes": {
            "customer_id": 1,
            "tea_id": 1,
            "title": "tea.title",
            "price": 6.9,
            "status": "active",
            "frequency": "annually"
        }
    }
}
```

3)  #### Request
`PATCH /api/v1/customers/1/subscriptions/1`
##### Request Body
```json
   { 
   "status": "canceled" 
   }
```
#### Response
```json
{
    "data": {
        "id": "4",
        "type": "subscription",
        "attributes": {
            "customer_id": 1,
            "tea_id": 1,
            "title": "tea.title",
            "price": 6.9,
            "status": "canceled",
            "frequency": "annually"
        }
    }
}
```

#### Errors Handling

 #### Request
`PATCH /api/v1/customers/1/subscriptions/1`

##### Request Body
```json
   { 
   "status": "transferred" 
   }
```

#### Response
```
{
    "error": "invalid status"
}
```

#### Simplecov Test Coverage

![Screen Shot 2022-09-15 at 6 09 36 PM](https://user-images.githubusercontent.com/83252572/190530007-3323e223-a83c-4e58-86e6-086d5672c84c.png)

#### Postman Link

[Postman Link](https://api.postman.com/collections/20100024-aaca830e-96a3-4659-a525-6e6d685bdde9?access_key=PMAT-01GYFFE70BZ9R8GAESPYFAP7GT)

[Postman Link](https://api.postman.com/collections/20100024-90256c87-43dd-4c51-ac83-e425189ae9cc?access_key=PMAT-01GYFFQ2R6RF5MBY0QQX9MR0BF)
