Ans 1
SELECT park_id, count(*) as "Nb bookings",  AVG(extract(day from end_at)) as "DMS"
	FROM BOOKINGS
		WHERE begin_at >= '2019-01-01' AND end_at < '2019-02-01'
	GROUP BY park_id;
	

Ans 2

select month(created_at) as "Month",sum(pur.price) as "Turnover", 
		sum(pur.price) - LAG(sum(pur.price)) OVER ( ORDER BY month(created_at ) AS 'MoM growth',
		sum(pur.price) - LAG(sum(pur.price)) OVER ( ORDER BY YEAR(created_at ) ) AS 'YOY growth'
	 from bookings
	 inner join purchases pur
		on pur.id = book.purchase_id
	order by month(created_at);
	
	
	
Ans 3
select count(*) from BOOKINGS book
	WHERE  book.park_id = (select park.id from PARKS park
					WHERE market_segment = 'airport')
	having count(*)> = 2
		inner join park
		on park.id = book.park_id;
	


Ans 4 

SELECT purch.user_id, (MAX(book.end_at) - MIN(book.end_at)) / (COUNT(*) - 1)
  FROM Bookings book
 GROUP BY purch.user_id
HAVING COUNT(*) > 1
	inner join purchases purch
		on purch.id = book.purchase_id;
		

Ans 6
#strategy of solve the complex query my steps according.
First of all define business requirement first
Add tables to the query. Next, you can start adding tables and views to the query. 
Create a subquery. 
Create JOINs between the tables.
Build WHERE or HAVING clause define filters. 
Create GROUP BY or ORDER BY clause.
wildcards for the end of a phrase only.
View and execute the query. 
Analyze the result.




Ans 7 
select sum(datediff(day, begin_at, end_at)) as  "occupancy rate"
from Bookings
group by sum(datediff(day, BookingFrom, BookingUpto));


Ans 8
A data warehouse is a system used to store and report data. Data is typically generated in multiple systems and then moved to a data warehouse for long-term storage and analysis. A data warehouse contains data from multiple operational sources. It is used to analyze the data.

Ans 9
If you want to visualize the data, make sure you use the correct chart. While your data can work with many chart types, it is up to you to choose the chart type that ensures your message is clear and accurate. Remember that data is only useful if you know how to visualize and contextualize it.


	 


