/*Questions: HAVING

How many of the sales reps have more than 5 accounts that they manage?*/

SELECT s.name, COUNT(*) num_accts 
FROM sales_reps s
JOIN accounts a
ON s.id = a.sales_rep_id
GROUP BY s.name
HAVING COUNT(*) > 5;

/*How many accounts have more than 20 orders?*/


/*Which account has the most orders?*/


/*Which accounts spent more than 30,000 usd total across all orders?*/


/*Which accounts spent less than 1,000 usd total across all orders?*/


/*Which account has spent the most with us?*/


/*Which account has spent the least with us?*/


/*Which accounts used facebook as a channel to contact customers more than 6 times?*/


/*Which account used facebook most as a channel?*/


/*Which channel was most frequently used by most accounts?*/
