/* Every query will have at least a SELECT and FROM statement. 
The SELECT statement is where you put the columns for which you would like to show the data. 
The FROM statement is where you put the tables from which you would like to pull data.
*/

/* Write your own query to select only the id, account_id, and occurred_at 
columns for all orders in the orders table.*/

SELECT id, account_id, occurred_at
FROM orders;

/* Write a query that limits the response to only the 
first 10 rows and includes the date, account_id and 
channel fiels in the web_events table.
*/

SELECT occurred_at, account_id,channel
FROM web_events
LIMIT 10;

