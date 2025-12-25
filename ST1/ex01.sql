select object_name from (select pizza_name as object_name, 2 as sort from menu
union all
select name as object_name, 1 as sort from person)
order by sort, object_name 
