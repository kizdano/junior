select order_date, concat(p.name, ' (age:', p.age, ')') as person_information from person_order po
natural join person p  
order by order_date ASC, person_information ASC
