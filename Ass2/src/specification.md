#Specification


##Entities
- Customer
- Car
- Insurance_Package
- Insurance_Company
- City

##Relationships
- owns [Customer{1}-owns-{N}Car]
- lives_in [Customer{1}-lives_in-{1}City]
- covers [Insurance_Coverage{1}-covers-{N}Car]
- offers [Insurance_Company{1}-offers-{N}Insurance_Package]
- located_in [Insurance_Company{1}-lives_in-{1}City]

 