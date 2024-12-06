SELECT pizza_name
FROM menu AS m1
WHERE NOT EXISTS (
	SELECT 1
	FROM menu AS m2
	WHERE m2.pizza_name = m1.pizza_name
	AND m2.id < m1.id
)
ORDER BY pizza_name DESC;