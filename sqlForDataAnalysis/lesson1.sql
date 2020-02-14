/* Write a query that limits the response to only the 
first 10 rows and includes the date, account_id and 
channel fiels in the web_events table.
*/

SELECT occurred_at, account_id,channel
FROM web_events
LIMIT 10;