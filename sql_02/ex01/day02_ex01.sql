SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS missing_date
LEFT JOIN
    (SELECT visit_date
     FROM person_visits
     WHERE person_id = 1 OR person_id = 2
           AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') AS t1 ON missing_date = t1.visit_date
WHERE t1.visit_date IS NULL
ORDER BY missing_date;
