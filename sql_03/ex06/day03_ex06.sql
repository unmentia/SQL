SELECT 
	m1.pizza_name,
    p2.name AS pizzeria_name_2,
	p1.name AS pizzeria_name_1,
    m1.price
FROM menu m1
INNER JOIN menu m2 ON m1.pizza_name = m2.pizza_name 
                   AND m1.price = m2.price
                   AND m1.pizzeria_id < m2.pizzeria_id
INNER JOIN pizzeria p1 ON m1.pizzeria_id = p1.id
INNER JOIN pizzeria p2 ON m2.pizzeria_id = p2.id
ORDER BY m1.pizza_name;
