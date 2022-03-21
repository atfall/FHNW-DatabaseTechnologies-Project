----One table questions
--1) Show the car_id, car_brand, car_model and milage of the car that has the lowest milage.
SELECT car_id, car_brand, car_model, milage FROM car WHERE milage = (SELECT MIN(milage) from car);

----Two table questions

----Three table questions

----Four table questions