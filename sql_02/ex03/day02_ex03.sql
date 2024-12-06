WITH CTE(missing_date) AS (
    SELECT missing_date::date
    FROM GENERATE_SERIES('2022-01-01', '2022-01-10', INTERVAL '1 day') AS missing_date
)
SELECT missing_date
FROM CTE
LEFT JOIN (
    SELECT visit_date
    FROM person_visits 
    WHERE person_id = 1 OR person_id = 2
          AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
) AS T1 ON CTE.missing_date = T1.visit_date
WHERE T1.visit_date IS NULL
ORDER BY missing_date;
