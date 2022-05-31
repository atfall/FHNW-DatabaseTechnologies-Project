select *
from owned_cars oc
full outer join car_colour cc on oc.car_colour_id = cc.colour_id
full outer join car_index ci on oc.car_index_id = ci.car_id
full outer join customer c on oc.customer_id = c.customer_id
full outer join city cy on c.zip_code = cy.city_zip
full outer join insurance_package ip on oc.package_id = ip.package_id
full outer join insurance_company ic on ip.company_id = ic.company_id;
