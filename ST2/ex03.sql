WITH date_series AS (
    SELECT
        DATE(day) AS missing_date
    FROM
        generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval) AS day
)
SELECT
    ds.missing_date
FROM
    date_series ds
LEFT JOIN
    person_visits pv ON ds.missing_date = pv.visit_date
    AND pv.person_id IN (1, 2)
WHERE
    pv.visit_date IS NULL
ORDER BY
    ds.missing_date;
