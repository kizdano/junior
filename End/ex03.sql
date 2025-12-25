(SELECT piz.name AS pizzeria_name
 FROM person_visits pv
 JOIN person p ON pv.person_id = p.id
 JOIN pizzeria piz ON pv.pizzeria_id = piz.id
 WHERE p.gender = 'female'
 EXCEPT ALL
 SELECT piz.name
 FROM person_visits pv
 JOIN person p ON pv.person_id = p.id
 JOIN pizzeria piz ON pv.pizzeria_id = piz.id
 WHERE p.gender = 'male')
UNION ALL
(SELECT piz.name
 FROM person_visits pv
 JOIN person p ON pv.person_id = p.id
 JOIN pizzeria piz ON pv.pizzeria_id = piz.id
 WHERE p.gender = 'male'
 EXCEPT ALL
 SELECT piz.name
 FROM person_visits pv
 JOIN person p ON pv.person_id = p.id
 JOIN pizzeria piz ON pv.pizzeria_id = piz.id
 WHERE p.gender = 'female')
ORDER BY pizzeria_name;
