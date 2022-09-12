/*Questions: Working With DATEs
Find the sales in terms of total dollars for all orders in each year, ordered from greatest to least. Do you notice any trends in the yearly sales totals?*/

SELECT SUM(o.total_amt_usd) total_usd, DATE_PART('year', o.occurred_at) year_
FROM orders o
GROUP BY 2
ORDER BY 1 DESC;

/*Which month did Parch & Posey have the greatest sales in terms of total dollars? Are all months evenly represented by the dataset?*/


/*Which year did Parch & Posey have the greatest sales in terms of total number of orders? Are all years evenly represented by the dataset?*/


/*Which month did Parch & Posey have the greatest sales in terms of total number of orders? Are all months evenly represented by the dataset?*/


/*In which month of which year did Walmart spend the most on gloss paper in terms of dollars?*/
