WITH max_id AS (
    SELECT MAX(id) AS current_max_id FROM person_order
),
menu_id AS (
    SELECT id AS menu_id FROM menu WHERE pizza_name = 'greek pizza'
)
INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
    current_max_id + ROW_NUMBER() OVER () AS id,
    person.id AS person_id,
    menu_id,
    '2022-02-25' AS order_date
FROM person
CROSS JOIN max_id
CROSS JOIN menu_id;
