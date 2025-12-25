SELECT piz.name AS pizzeria_name
FROM person_visits pv
JOIN person p ON pv.person_id = p.id
JOIN pizzeria piz ON pv.pizzeria_id = piz.id
WHERE p.name = 'Andrey'
EXCEPT
SELECT piz.name
FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria piz ON m.pizzeria_id = piz.id
WHERE p.name = 'Andrey'
ORDER BY pizzeria_name;
