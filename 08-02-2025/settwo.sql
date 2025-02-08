-- Find the top 3 most expensive completed transactions, excluding NULL amounts.
-- 	- Sort the results in descending order based on the amount.
-- 	- Ensure that only 'Completed' transactions are included.
-- Retrieve unique email domains (e.g., example.com) of customers who have completed at least two transactions.
-- 	- Ignore NULL emails.
-- 	- Extract the email domain after @.
-- 	- Only include customers with more than one completed transaction.
-- Fetch all transactions containing special characters in the remarks column, but exclude those containing only numeric values.
-- 	- Sort results by tid in ascending order.
-- 	- Only include transactions where remarks contain at least one special character (@#!$%^&*).
-- 	- Ignore rows where remarks only contain numbers.
-- Retrieve the latest transaction for each customer who has at least one failed transaction.
-- 	- Find customers who have at least one transaction with status 'Failed'.
-- 	- Return only their most recent transaction, regardless of status.
-- List customers who have transactions in multiple countries.
-- 	- Only include customers who have transactions in at least two different countries.
-- 	- Sort the output by cname alphabetically.
-- Find the top 5 customers who have spent the most money, excluding failed transactions.
-- 	- Sum the amount spent by each customer.
-- 	- Only count transactions that are not 'Failed'.
-- 	- Sort the results in descending order of total spending.
-- Retrieve transactions where the amount is between 50 and 500, but exclude transactions from Canada and Germany.
-- 	- Use BETWEEN for the amount range.
-- 	- Exclude transactions from Canada and Germany.
-- 	- Order results by amount in descending order.
-- Get the first 3 transactions from the 5th transaction onward, sorted by date in ascending order.
-- 	- Use OFFSET to skip the first four transactions.
-- 	- Fetch only 3 transactions.
-- 	- Sort by transaction_date in ascending order.
-- List all distinct transaction categories where there are more than 3 completed transactions.
-- 	- Find categories that have more than 3 transactions with status 'Completed'.
-- 	- Ensure each category appears only once in the result.
-- 	- Sort alphabetically.
-- Find customers who have at least one pending transaction and one completed transaction.
-- 	- Only include customers who have both 'Pending' and 'Completed' transactions.
-- 	- Order by cname.

SELECT * FROM transactions
WHERE (amount IS NOT NULL) AND 
(status = 'Completed')
ORDER BY amount DESC
LIMIT 3;

SELECT DISTINCT SUBSTRING(email, POSITION('@' IN email) + 1) AS domains FROM transactions
WHERE (email IS NOT NULL) AND 
(email IN (
	SELECT email FROM transactions
	WHERE status = 'Completed'
	GROUP BY email
	HAVING COUNT(status) > 1
));

SELECT * FROM transactions
WHERE (remarks ~ '[@#!$%^&*]') AND
(remarks !~ '^[0-9]+$')
ORDER BY tid;

SELECT * FROM transactions
WHERE cname IN (
	SELECT cname FROM transactions
	WHERE (status = 'Failed') AND (cname IS NOT NULL)
	GROUP BY cname
	HAVING COUNT(status) >= 1
)
ORDER BY date DESC;

SELECT cname FROM transactions
WHERE cname IS NOT NULL
GROUP BY cname
HAVING COUNT(DISTINCT country) >= 2

SELECT cname FROM transactions
WHERE NOT (status = 'Failed') AND (amount IS NOT NULL)
GROUP BY cname
ORDER BY SUM(amount) DESC
LIMIT 5;

SELECT * FROM transactions
WHERE (amount BETWEEN 50 AND 500) AND
NOT country IN ('Canada', 'Germany')
ORDER BY amount DESC;

SELECT * FROM transactions
ORDER BY date
LIMIT 3 OFFSET 4;

WITH category_filter AS (
	SELECT lower(category) AS category, COUNT(status) FROM transactions
	WHERE status = 'Completed'
	GROUP BY lower(category)
	HAVING COUNT(status) > 3
)
SELECT DISTINCT category FROM category_filter
ORDER BY category;
-- SELECT lower(category) AS category
-- FROM transactions
-- WHERE status = 'Completed'
-- GROUP BY lower(category)
-- HAVING COUNT(*) > 3
-- ORDER BY category;


SELECT DISTINCT cname FROM transactions
WHERE cname IN (
	SELECT cname FROM transactions
	WHERE status = 'Pending'
	GROUP BY cname
	HAVING COUNT(status) >= 1
) AND
cname IN (
	SELECT cname FROM transactions
	WHERE status = 'Completed'
	GROUP BY cname
	HAVING COUNT(status) >= 1
)
ORDER by cname;
-- SELECT DISTINCT cname FROM transactions
-- WHERE cname IN (
-- 	SELECT cname FROM transactions WHERE status = 'Pending'
-- ) 
-- AND cname IN (
-- 	SELECT cname FROM transactions WHERE status = 'Completed'
-- )
-- ORDER BY cname;