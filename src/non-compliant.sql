-- Long line, mixed case
SELECT
    first_name
    , last_name
    , email
    , test_column
    , test_column_2
FROM users WHERE status = 'active' AND email LIKE '%@example.com';

-- Single line, mixed case, aliases not lowercase
SELECT
    u.last_name
    , u.first_name
    , o.order_date
    , o.order_amount
FROM users AS u
INNER JOIN orders AS o ON u.user_id = o.user_id
WHERE u.status = 'active'
ORDER BY o.order_date DESC;
