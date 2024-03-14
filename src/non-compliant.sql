-- Long line, mixed case
SELECT
    FIRST_NAME
    , LAST_NAME
    , EMAIL
    , TEST_COLUMN
    , TEST_COLUMN_2
FROM USERS WHERE STATUS = 'active' AND EMAIL LIKE '%@example.com';

-- Single line, mixed case, aliases not lowercase
SELECT
    U.FIRST_NAME
    , U.LAST_NAME
    , O.ORDER_DATE
    , O.ORDER_AMOUNT
FROM USERS AS U
INNER JOIN ORDERS AS O ON U.USER_ID = O.USER_ID
WHERE U.STATUS = 'active'
ORDER BY O.ORDER_DATE DESC;
