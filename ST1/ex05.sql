select p.id AS person_id, p.name AS person_name, p.age, p.gender, p.address, pz.id AS pizzeria_id, pz.name AS pizzeria_name, pz.rating
from  person p, pizzeria pz
order by person_id, pizzeria_id
