SELECT
    name
FROM
    person
WHERE
    gender = 'female'
    AND EXISTS (
        SELECT 1
        FROM person_order po
        JOIN menu m ON po.menu_id = m.id
        WHERE po.person_id = person.id
        AND m.pizza_name = 'pepperoni pizza'
    )
    AND EXISTS (
        SELECT 1
        FROM person_order po
        JOIN menu m ON po.menu_id = m.id
        WHERE po.person_id = person.id
        AND m.pizza_name = 'cheese pizza'
    )
ORDER BY
    name;
