select order_date, concat(p.name, ' (age:', p.age, ')') as person_information from person_order po
join person p on po.person_id = p.id 
order by order_date ASC, person_information ASC
