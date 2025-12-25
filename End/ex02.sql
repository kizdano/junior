SELECT 
    m.pizza_name, 
    m.price, 
    piz.name AS pizzeria_name
FROM menu m
JOIN pizzeria piz ON m.pizzeria_id = piz.id
WHERE m.id IN (
    SELECT id FROM menu
    EXCEPT
    SELECT menu_id FROM person_order
)
ORDER BY 1, 2;
