----One table questions
--1) Show the car_id, car_brand, car_model and milage of the car that has the lowest milage.
SELECT car_id, car_brand, car_model, milage FROM car WHERE milage = (SELECT MIN(milage) from car);
--2) Show the most popular car colour.
SELECT car_colour FROM car WHERE car_colour = (SELECT MAX(COUNT(car_colour)) from car;
--3) Show the top 3 most popular insurance coverages. 
--(NOTE!: the LIMIT command didnt work here so i had to use ROWNUM instead)
SELECT * FROM (SELECT package_id FROM customer ORDER BY COUNT(package_id) DESC) ROWNUM <= 3;
--4) How many Insurance Companies are from Upsala?
SELECT count(company_id) FROM insurance_company WHERE company_city = 'Upsala'
--5) How many different insurance coverages are avaiable?
SELECT count(distinct package_name) FROM insurance_coverage

----Two table questions
--6) Show the full name of who own what car model and brand.

--7) Who owns a KITT and show which model.

--8) Show how many coverages are offered by which company.
SELECT c.company_name, count(p.package_name) FROM insurance_company c LEFT JOIN insurance_coverage p on c.company_id = p.company_id GROUP BY c.company_name
--9) Show the insurance product name and the insurance company name, grouped by company
SELECT c.company_name, p.package_name FROM insurance_company c LEFT JOIN insurance_coverage p on c.company_id = p.company_id GROUP BY c.company_name
--10) Wich company has the cheapest product?
SELECT c.company_name, p.package_name, p.package_cost FROM insurance_company c LEFT JOIN insurance_coverage p on c.company_id = p.company_id ORDER BY p.package_cost asc limit 1

----Three table questions
--11) What kind of car does Michael Knight drive, who is his insurance company and wich product does he have?

--12)Who is the owner of the Batmobil and who is the insurance company?

--13)Count how many cars each product has, group by insurance company

--14)What is the average cost from each product, show as well the company

--15)

----Four table questions
--16)

--17)

--18)

--19)

--20)
