/*Questions: DISTINCT
Use DISTINCT to test if there are any accounts associated with more than one region.*/
SELECT a.name account, r.name region
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON s.region_id = r.id;

SELECT DISTINCT id, name
FROM accounts;

SELECT a.id as "account id", r.id as "region id", 
a.name as "account name", r.name as "region name"
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id;

SELECT DISTINCT id, name
FROM accounts;

/*Have any sales reps worked on more than one account?*/
