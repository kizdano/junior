    (select name from person where id = po.person_id) as person_name,
    (select pizza_name from menu where id = po.menu_id) as pizza_name,
    (select name from pizzeria where id = (
        select pizzeria_id from menu where id = po.menu_id
    )) as pizzeria_name
from 
    person_order po
order by person_name asc, pizza_name asc, pizzeria_name asc
