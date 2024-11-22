SELECT MIN(po.order_date) AS "action_date", p.name AS "person_name"
FROM person_order AS po
JOIN person AS p ON po.person_id = p.id
WHERE EXISTS (
	SELECT 1
	FROM person_visits AS pv
	WHERE pv.visit_date = po.order_date
	AND pv.person_id = po.person_id
)
GROUP BY p.name
ORDER BY action_date ASC, p.name DESC;
