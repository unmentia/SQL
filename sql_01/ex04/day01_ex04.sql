SELECT 
    po.person_id - pv.person_id
FROM person_order AS po, person_visits AS pv
WHERE po.order_date = '2022-01-07'
  AND pv.visit_date = '2022-01-07'
  AND po.person_id = pv.person_id;
