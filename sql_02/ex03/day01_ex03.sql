SELECT MIN(order_date) AS "action_date", person_id
FROM person_order AS po
WHERE EXISTS (
    SELECT 1
    FROM person_visits AS pv
    WHERE pv.visit_date = po.order_date
    AND pv.person_id = po.person_id
)
GROUP BY person_id
ORDER BY action_date ASC, person_id DESC;
