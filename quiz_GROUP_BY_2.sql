/*Questions: GROUP BY Part II
For each account, determine the average amount of each type of paper they purchased across their orders. Your result should have four columns - one for the account name and one for the average quantity purchased for each of the paper types for each account.*/

SELECT a.name, AVG(o.standard_qty) s_qty, AVG(o.gloss_qty) g_qty, AVG(o.poster_qty) p_qty
FROM orders o
JOIN accounts a
ON o.account_id = a.id
GROUP BY a.name;

/*For each account, determine the average amount spent per order on each paper type. Your result should have four columns - one for the account name and one for the average amount spent on each paper type.*/

SELECT a.name, AVG(o.standard_amt_usd) s_amt, AVG(o.gloss_amt_usd) g_amt, AVG(o.poster_amt_usd) p_amt
FROM orders o
JOIN accounts a
ON o.account_id = a.id
GROUP BY a.name;

/*Determine the number of times a particular channel was used in the web_events table for each sales rep. Your final table should have three columns - the name of the sales rep, the channel, and the number of occurrences. Order your table with the highest number of occurrences first.*/

SELECT s.name, w.channel, COUNT(w.channel)
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
JOIN sales_reps s
ON a.sales_rep_id = s.id
GROUP BY s.name, w.channel
ORDER BY COUNT(w.channel) DESC;

/*Determine the number of times a particular channel was used in the web_events table for each region. Your final table should have three columns - the region name, the channel, and the number of occurrences. Order your table with the highest number of occurrences first.*/

SELECT r.name, w.channel, COUNT(w.channel)
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON r.id = s.region_id
GROUP BY r.name, w.channel
ORDER BY COUNT(w.channel) DESC;
