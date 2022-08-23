/*Questions: MIN, MAX, & AVERAGE
When was the earliest order ever placed? You only need to return the date.*/

SELECT MIN(occurred_at)
FROM orders;

/*Try performing the same query as in question 1 without using an aggregation function.*/

SELECT occurred_at
FROM orders
ORDER BY occurred_at 
LIMIT 1;

/*When did the most recent (latest) web_event occur?*/

SELECT MAX(occurred_at)
FROM orders

/*Try to perform the result of the previous query without using an aggregation function.*/

SELECT occurred_at
FROM orders
ORDER BY occurred_at DESC
LIMIT 1;

/*Find the mean (AVERAGE) amount spent per order on each paper type, as well as the mean amount of each paper type purchased per order. Your final answer should have 6 values - one for each paper type for the average number of sales, as well as the average amount.*/

SELECT AVG(standard_amt_usd) AS avg_std_amt,
	AVG(gloss_amt_usd) AS avg_gls_amt,
    AVG(poster_amt_usd) AS avg_pstr_amt,
    AVG(standard_qty) AS avg_std_qty,
    AVG(gloss_qty) AS avg_gls_qty,
    AVG(poster_qty) AS avg_pstr_qty
FROM orders;


/*Via the video, you might be interested in how to calculate the MEDIAN. Though this is more advanced than what we have covered so far try finding - what is the MEDIAN total_usd spent on all orders?*/
--My (failed) attempt:

SELECT --(o.total_amt_usd), 
        o.id,
        COUNT(o.id)/2 as median_id
FROM orders o
WHERE o.id = 3456
--HAVING o.id = median_id
GROUP BY total_amt_usd
ORDER BY total_amt_usd;


