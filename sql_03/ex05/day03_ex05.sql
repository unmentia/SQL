SELECT 
    pizzeria.name AS pizzeria_name
FROM pizzeria
INNER JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
WHERE person_visits.person_id = 2
  AND NOT EXISTS (
      SELECT 1
      FROM person_order
      WHERE person_order.person_id = 2
        AND person_order.menu_id IN (
            SELECT menu.id
            FROM menu
            WHERE menu.pizzeria_id = pizzeria.id
        )
  )
ORDER BY pizzeria_name;
