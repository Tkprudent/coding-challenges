/* Every query will have at least a SELECT and FROM statement. 
The SELECT statement is where you put the columns for which you would like to show the data. 
The FROM statement is where you put the tables from which you would like to pull data.
*/

/* Write your own query to select only the id, account_id, and occurred_at 
columns for all orders in the orders table.*/

SELECT id, account_id, occurred_at
FROM orders;

/* Write a query that to fetch rows and includes the date, account_id and 
channel fields in the web_events table.
*/

SELECT occurred_at, account_id,channel
FROM web_events;

/*Write a query to return the 10 earliest orders in the orders table.
 Include the id, occurred_at, and total_amt_usd*/

 SELECT id, occurred_at, total_amt_usd
 FROM orders
 ORDER BY occurred_at;

 /*Provide a table that provides the region for each sales_rep along with their associated accounts. 
 This time only for the Midwest region. Your final table should include three columns: 
 the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name.*/

 SELECT r.name Region, s.name SalesRep, a.name Account 
 FROM sales_reps AS s
 JOIN region AS r
 ON s.region_id = r.id
 JOIN accounts As a
 ON a.sales_rep_id = s.id
 WHERE r.name = 'Midwest'
 ORDER BY a.name;

 /*Which channel was most frequently used by most accounts?*/

SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
GROUP BY a.id, a.name, w.channel
ORDER BY use_of_channel DESC
LIMIT 10;

/*Which account used facebook most as a channel?*/
SELECT a.id, a.name, w.channel, COUNT(*) use_of_channel
FROM accounts as a
JOIN web_events as w
ON a.id = w.account_id
WHERE w.channel = 'facebook'
GROUP BY a.id, a.name, w.channel
ORDER BY use_of_channel DESC
LIMIT 1;