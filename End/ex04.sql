(SELECT piz.name AS pizzeria_name
 FROM person_order po
 JOIN person p ON po.person_id = p.id
 JOIN menu m ON po.menu_id = m.id
 JOIN pizzeria piz ON m.pizzeria_id = piz.id
 WHERE p.gender = 'female'
 EXCEPT
 SELECT piz.name
 FROM person_order po
 JOIN person p ON po.person_id = p.id
 JOIN menu m ON po.menu_id = m.id
 JOIN pizzeria piz ON m.pizzeria_id = piz.id
 WHERE p.gender = 'male')
UNION
(SELECT piz.name
 FROM person_order po
 JOIN person p ON po.person_id = p.id
 JOIN menu m ON po.menu_id = m.id
 JOIN pizzeria piz ON m.pizzeria_id = piz.id
 WHERE p.gender = 'male'
 EXCEPT
 SELECT piz.name
 FROM person_order po
 JOIN person p ON po.person_id = p.id
 JOIN menu m ON po.menu_id = m.id
 JOIN pizzeria piz ON m.pizzeria_id = piz.id
 WHERE p.gender = 'female')
ORDER BY pizzeria_name;
