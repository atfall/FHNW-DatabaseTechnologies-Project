----One table questions
--1) Show the car_id, car_brand, car_model and milage of the car that has the lowest milage.
SELECT car_id, car_brand, car_model, milage FROM car WHERE milage = (SELECT MIN(milage) from car);
--2) Show the most popular car colour.

--3) Show the most popular car brand.

--4) How many Insurance Companies are from Upsala?
SELECT count(company_id) FROM insurance_company WHERE company_adress = 'Smörebröd, 898989 Upsala'
--5) How many different insurance coverages are avaiable?
SELECT count(distinct package_name) FROM insurance_company

----Two table questions
--6) Show the full name of who own what car model and brand.

--7) Who owns a BMW and show which model.

--8) Show which coverages are offered by which company.

--9) Show the insurance product name and the insurance company name

--10)

----Three table questions
--11)

--12)

--13)

--14)

--15)

----Four table questions
--16)

--17)

--18)

--19)

--20)
