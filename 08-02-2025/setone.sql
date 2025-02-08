-- Retrieve all transactions where the amount is greater than 200, but only for customers from 'India' or 'USA'.
-- Find all distinct customer names who have made a transaction, excluding NULL values.
-- Fetch the top 5 most recent transactions, ordering them by transaction_date in descending order.
-- Retrieve all transactions where the category contains the word ‘fashion’ in any format (case insensitive).
-- Get transactions where the amount is between 50 and 500, and the status is not 'Failed'.
-- Retrieve transactions that contain special characters in the remarks column, sorted by transaction_id.
-- Fetch only the first 5 transactions after skipping the first 3 transactions, ordered by transaction_date.
-- Find transactions where the status is either 'Completed' or 'Pending', and sort the results by country name alphabetically.
-- Retrieve all transactions where the email field is NULL or contains '@example.com'.
-- Fetch transactions with duplicate customer names, ordered by customer_name.

-- Use IS NOT NULL for amount
SELECT * FROM transactions
WHERE (COALESCE(amount, 0) > 200 ) AND
(country IN ('India', 'USA'));

SELECT DISTINCT cname FROM transactions
WHERE cname IS NOT NULL;

SELECT * FROM transactions
ORDER BY date DESC
LIMIT 5;

SELECT * FROM transactions
WHERE category ILIKE '%fashion%';

-- Use <> instead of !=
SELECT * FROM transactions
WHERE (amount BETWEEN 50 AND 500) AND
(status != 'Failed');


-- WHERE remarks ~ '[^a-zA-Z0-9\s]'
SELECT * FROM transactions
WHERE remarks ~ '[@^$.!\-#+"~_]'
ORDER BY tid;

SELECT * FROM transactions
ORDER BY date
LIMIT 5 OFFSET 3;

-- AND status IS NOT NULL
SELECT * FROM transactions
WHERE status IN ('Completed', 'Pending')
ORDER BY country;

-- LOWER(email)
SELECT * FROM transactions
WHERE (email IS NULL) OR 
(email ILIKE '%@example.com%');

SELECT cname FROM transactions
GROUP BY cname
HAVING COUNT(cname) > 1
ORDER BY cname;