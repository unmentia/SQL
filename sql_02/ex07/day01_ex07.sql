SELECT 
    po.order_date AS "order_date",
    CONCAT(p.name, '(age:', p.age, ')' ) AS "person_information"
FROM person_order AS po
JOIN person AS p ON po.person_id = p.id
WHERE EXISTS (
    SELECT 1
    FROM person_visits AS pv
    WHERE pv.visit_date = po.order_date
    AND pv.person_id = po.person_id
)
ORDER BY order_date ASC, p.name ASC;
