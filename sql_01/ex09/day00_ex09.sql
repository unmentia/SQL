SELECT 
	(SELECT name
	FROM person
	WHERE person.id = person_visits.person_id) AS NAME,
	(SELECT name
	FROM pizzeria
	WHERE pizzeria.id = person_visits.pizzeria_id) AS PIZZERIA_NAME,
	person_visits.visit_date AS VISIT_DATE
FROM person_visits
WHERE visit_date >= '2022-01-07' AND visit_date <= '2022-01-09'
ORDER BY name ASC, 
	pizzeria_name DESC;
