SELECT person.name FROM person
INNER JOIN person_order ON person.id = person_order.person_id
INNER JOIN menu ON person_order.menu_id = menu.id
WHERE gender = 'female'
  AND pizza_name IN ('pepperoni pizza', 'cheese pizza')
GROUP BY person.name
HAVING COUNT(DISTINCT pizza_name) = 2
ORDER BY person.name;
