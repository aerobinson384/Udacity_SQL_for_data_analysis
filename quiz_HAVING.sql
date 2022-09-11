/*Questions: HAVING

How many of the sales reps have more than 5 accounts that they manage?*/

SELECT s.name, COUNT(*) num_accts 
FROM sales_reps s
JOIN accounts a
ON s.id = a.sales_rep_id
GROUP BY s.name
HAVING COUNT(*) > 5;

/*How many accounts have more than 20 orders?*/

SELECT a.name, COUNT(*) num_orders 
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
HAVING COUNT(*) > 20;

/*Which account has the most orders?*/

SELECT a.name, COUNT(*) num_orders 
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY COUNT(*) DESC
LIMIT 1;

/*Which accounts spent more than 30,000 usd total across all orders?*/

SELECT a.name, SUM(o.total_amt_usd) amt_spent 
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
HAVING SUM(o.total_amt_usd) > 30000;

/*Which accounts spent less than 1,000 usd total across all orders?*/

SELECT a.name, SUM(o.total_amt_usd) amt_spent 
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
HAVING SUM(o.total_amt_usd) < 1000;

/*Which account has spent the most with us?*/

SELECT a.name, SUM(o.total_amt_usd) amt_spent 
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY SUM(o.total_amt_usd) DESC
LIMIT 1;

/*Which account has spent the least with us?*/

SELECT a.name, SUM(o.total_amt_usd) amt_spent 
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY SUM(o.total_amt_usd) ASC
LIMIT 1;

/*Which accounts used facebook as a channel to contact customers more than 6 times?*/

SELECT a.name, COUNT(w.channel) channel_count
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
WHERE w.channel = 'facebook'
GROUP BY a.name
HAVING COUNT(w.channel) > 6;

/*Which account used facebook most as a channel?*/

SELECT a.name, COUNT(w.channel) channel_count
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
WHERE w.channel = 'facebook'
GROUP BY a.name
ORDER BY COUNT(w.channel) DESC
LIMIT 1;

/*Which channel was most frequently used by most accounts?*/
