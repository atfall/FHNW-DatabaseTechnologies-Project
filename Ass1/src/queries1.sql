----One table questions
--1) Show the car_id, car_brand, car_model and milage of the car that has the lowest milage.
SELECT car_id, car_brand, car_model, milage FROM car WHERE milage = (SELECT MIN(milage) from car);
--2) Show the most popular car colour.
SELECT * FROM (SELECT car_colour FROM car GROUP BY car_colour ORDER BY COUNT(car_colour) DESC) WHERE ROWNUM <= 1;
--3) Show the top 3 most popular insurance coverages. 
--(NOTE!: the LIMIT command didnt work here so i had to use ROWNUM instead)
SELECT * FROM (SELECT package_id FROM customer GROUP BY package_id ORDER BY COUNT(package_id) DESC) WHERE ROWNUM <= 3;
--4) How many Insurance Companies are from Upsala?
SELECT count(company_id) FROM insurance_company WHERE company_city = 'Upsala';
--5) How many different insurance coverages are avaiable?
SELECT count(distinct package_name) FROM insurance_coverage;

----Two table questions
--6) Show the full name of who own what car model and brand.
SELECT first_name, last_name, car_brand, car_model FROM customer cust INNER JOIN car car ON cust.customer_id = car.customer_id;
--7) Who owns a KITT and show which model.
SELECT first_name, last_name, car_model FROM customer cust INNER JOIN car car ON cust.customer_id = car.customer_id WHERE car_model = 'KITT';
--8) Show how many coverages are offered by which company.
SELECT c.company_name, count(p.package_name) FROM insurance_company c LEFT JOIN insurance_coverage p on c.company_id = p.company_id GROUP BY c.company_name;
--9) Show the insurance product name and the insurance company name, grouped by company
SELECT c.company_name, p.package_name FROM insurance_company c LEFT JOIN insurance_coverage p on c.company_id = p.company_id GROUP BY c.company_name;
--10) Wich company has the cheapest product?
SELECT * FROM (SELECT c.company_name, p.package_name, p.package_cost FROM insurance_company c LEFT JOIN insurance_coverage p on c.company_id = p.company_id ORDER BY p.package_cost asc) WHERE ROWNUM <= 1;

----Three table questions
--11) Count how many cars each product has
select ic.package_name,  count(c.customer_id)
from insurance_coverage ic 
inner join customer c on c.package_id=ic.package_id
inner join insurance_company ico on ico.company_id=ic.company_id
group by ic.package_name;
--12)

--13)

--14)What is the average cost from each product, show as well the company

--15)

----Four table questions
--16)Who is the owner of the Batmobil and who is the insurance company?
SELECT first_name, last_name, company_name FROM customer cust INNER JOIN insurance_coverage cov ON cust.package_id = cov.package_id INNER JOIN insurance_company comp ON cov.company_id = comp.company_id INNER JOIN car ON cust.customer_id = car.customer_id WHERE car_brand = 'Batmobile';

--17)What kind of car does Michael Knight drive, who is his insurance company and wich product does he have?
select c.car_brand, c.car_model, ic.package_name 
from customer cu
left join car c on c.customer_id = cu.customer_id 
left join insurance_coverage ic on cu.package_id = ic.package_id 
left join insurance_company ico on ico.company_id = ic.company_id
where cu.last_name = 'Knight' and
cu.first_name = 'Michael';
--18)

--19)

--20)
