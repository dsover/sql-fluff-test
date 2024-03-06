-- Example SELECT statement
SELECT
    first_name
    , last_name
    , email
FROM
    users
WHERE
    status = 'active'
    AND email LIKE '%@example.com';
-- Example JOIN and indentation
SELECT
    u.first_name
    , u.last_name
    , o.order_date
    , o.order_amount
FROM
    users AS u
INNER JOIN orders AS o
    ON u.user_id = o.user_id
WHERE
    u.status = 'active'
ORDER BY
    o.order_date DESC;
