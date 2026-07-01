SELECT person_name
FROM (
    SELECT person_name
    FROM (
        SELECT person_name,
               turn,
               SUM(weight) OVER (ORDER BY turn) AS running_sum
        FROM Queue
    )
    WHERE running_sum <= 1000
    ORDER BY turn DESC
)
WHERE ROWNUM = 1;