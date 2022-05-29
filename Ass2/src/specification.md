#Specification
Welcome to the Smash-Brothers Broker Company! We are the leading broker for your car insurance!
We have a small database with our favourite customers and our prefered insurance provider.
You can see what fancy cars we have insured and what famous customers we have in our portfolio.

- customer can own more than one owned_car, customers can be from different cities
- insurance company offers multiple insurance packages, different companies are located in different cities
- an insurance package covers an owned_car, an owned_car can only have one insurance package at a time
- There needs to be a catalogue of possible cars that can be insured which uniquely identifies the brand, model
- An owned car is owned by a customer and references the car index catalogue for the brand and model, it also has details of the car colour and the milage of the car.
- There needs to be a record of all possible cities and zip code.

##Entities
- customer: customer_id PK, first_name, last_name, zip_code FK
- car_index: car_index_id PK, brand, model
- owned_car: owned_car_id PK, milage, car_colour FK, customer_id FK, car_index FK, package_id FK
- car_colour: colour_id PK, colour
- insurance_package: package_id PK, package_name, package_cost, company_id FK
- insurance_company: company_id PK, company_name, street, zip_code FK
- city: city_zip PK, city

##Relationships
### 1:N
- owns: [customer:owned_car]
- lives_in: [customer:city]
- covers: [insurance_package:owned_car]
- offers: [insurance_company:insurance_package]
- located_in: [insurance_company:city]
- has_colour: [car_colour:owned_car]
- is_car: [car_index:owned_car]

 