SELECT DISTINCT pizzeria.name 
FROM pizzeria
INNER JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
INNER JOIN menu ON pizzeria.id = menu.pizzeria_id
INNER JOIN person ON person_visits.person_id IN (9)
WHERE visit_date = '2022-01-08' AND price < 800;
