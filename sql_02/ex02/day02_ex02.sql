SELECT 
	COALESCE(p.name, '-') AS person_name,
	visit_date,
	COALESCE(pz.name, '-') AS pizzeria_name
FROM 
	(SELECT * FROM person_visits
	WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS pv
FULL JOIN person p ON p.id = pv.person_id
FULL JOIN pizzeria pz ON pz.id = pv.pizzeria_id
ORDER BY 1, 2, 3;
