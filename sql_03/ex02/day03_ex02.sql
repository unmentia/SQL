SELECT 
	menu.pizza_name,
	menu.price,
	pizzeria.name AS pizzeria_name
FROM menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE NOT EXISTS (
	SELECT menu_id
	FROM person_order
	WHERE menu_id = menu.id
)
ORDER BY pizza_name, price;
