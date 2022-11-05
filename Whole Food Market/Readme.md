### Whole Food Market

WHOLE FOOD MARKET
A big multinational company "Whole Foods market" wants to revamp their retail strategy in
India. You as a newly hired Data Analyst have been asked to be a part of the project. Your
job is to provide analytical support to the business in making business decisions.
You have been provided with some data around orders placed at various locations in India,
people who have returned the items, and customers.
All the data has been loaded into MySql and you are required to write SQL queries to help
the company make better decisions.
The data set provided to you has the following tables:
1. TABLE- orders
Order_ID (VARCHAR) - Primary Key for each order placed
Order_Date (VARCHAR) - when was the order placed
Ship_Date (VARCHAR) - when was the order shipped
Customer_ID (VARCHAR) -ID of the customer who placed the order
Segment (VARCHAR) - to which segment does the product sold belongs to
State (VARCHAR) - State where the order was placed
City (VARCHAR) - City where the order was placed
Product_ID (VARCHAR) - ID of the product sold
Category (VARCHAR) - Category of the product Sold
SubCategory (VARCHAR) - Sub category of the product Sold
Product_Name (VARCHAR) - Name of the product sold
Sales (DOUBLE) -Sale price of the order
Quantity (DOUBLE) - Quantity of product for which order was placed
Discount (DOUBLE) - % Discount offered on the MRP
Profit (DOUBLE) - Total Profit made on the order
2. TABLE- customers
Customer_ID (VARCHAR) - ID of the customer, primary key of the table
Customer_Name_ (VARCHAR) - Name of the Customer
3. TABLE- returns
Order_ID (VARCHAR) - Primary key of the order returned
Returned (VARCHAR) - If the order was returned or not

Link to the dataset:
[Food Market](https://docs.google.com/spreadsheets/d/12XaEepS4-KfHKIUguwI8jYAL9wWPfZgU/edit#gid=22174177)

## Questions
Q.1 Task: Describe the TABLE- orders;
1. TABLE- orders
ANS-Desc orders;

Q.2 Write a query for the same. Result should be such that the highest profit category and its respective sum of profit be on the top of result set.Refer table-orders
ANS-SELECT Category,SUM(Profit) FROM orders GROUP BY Category ORDER BY SUM(Profit) DESC;

Q.3 Which category had the highest profits?
ANS-Technology

Q.4 Write the query to update the city as Chandigarh where the State is Chandigarh.
Print all the contents of the table after updating.
Refer table-orders
ANS-UPDATE orders SET City='Chandigarh' WHERE State='Chandigarh';
SELECT * FROM orders;

Q.5 Result should be such that only total profit sum is returned.
Refer table-orders
ANS-SELECT SUM(Profit) FROM orders;

Q.6 Write a query to get the OrderID, ProductName and Profit. Result should be with respect to profit(In increasing order).
Refer table-orders
ANS-SELECT Order_ID,Product_Name,Profit FROM orders GROUP BY Order_ID,Product_Name,Profit
ORDER BY Profit ASC;

Q.7 Write a query to get all the orders where there was a loss and report the order ID, product name and loss. Sort the result in a format that the highest loss is on the top.
Refer table-orders
ANS-SELECT Order_ID,Product_Name,Profit FROM orders WHERE Profit < 0
ORDER BY Profit;

Q.8 Write a query to get the list of all orders which have loss and sort them in descending order of discount given.
Print OrderID, ProductName, Profit and Discount.
Refer table-orders
ANS-SELECT Order_ID,Product_Name,Profit,Discount FROM orders WHERE Profit < 0
ORDER BY Discount DESC;

Q.9 Write a query to get the State and sum of profit for each state. The result should be in increasing order of profit.
Refer Table-orders.
ANS-SELECT State,SUM(Profit) FROM orders GROUP BY State ORDER BY SUM(Profit);

Q.10 Select the states which are making a loss?
ANS-DELHI , DAMAN & DIU

Q.11 Write a query to get state, category and sum of profits.
Refer Table-orders
ANS-SELECT State,Category,SUM(Profit) FROM orders GROUP BY State,Category;

Q.12 Did you have any observations? Were there any states which are in loss because of category? Choose the correct option for such states and their categories.
ANS-DELHI-FURNITURE , DAMAN & DIU-FURNITURE

Q.13 Write a query to create a table in the database with Name as Manager and with values provided. Do assign proper Primary key.
ANS-CREATE TABLE Manager(
Segment Varchar(100),
Segment_Manager Varchar(100)    
);

INSERT INTO Manager (Segment, Segment_Manager) VALUES ('Consumer','Gaganjit Singh');
INSERT INTO Manager (Segment, Segment_Manager) VALUES ('Corporate','Aman Jain');
INSERT INTO Manager (Segment, Segment_Manager) VALUES ('Home Office','Kush Arora');

SELECT * FROM Manager;

Q.14 Write a query to get Segment, count of order, sum of profit.
Refer table-orders
ANS-SELECT Segment,COUNT(Order_ID),SUM(Profit) FROM orders GROUP BY Segment;

Q.15 Write the query to get sum of sales, sum of profit for the year 2020.
Note: Order_Date has char data type.
Refer table-orders
ANS-SELECT * FROM orders;
SELECT SUM(Sales),SUM(Profit) FROM orders WHERE Order_Date LIKE '%20';

Q.16 Write a query to get the sum of sales of each segment and their respective segment manager for all years except 2020.
Refer table- orders
ANS-
---SELECT * FROM orders;
DELETE FROM orders WHERE Order_Date LIKE '%20';
SELECT SUM(orders.Sales),manager.Segment_Manager FROM orders JOIN manager 
ON orders.Segment=manager.Segment
GROUP BY manager.Segment_Manager;

Q.17 Write a query to get Customer ID and sum of profit for each. The result should be such that you are easily able to find the highest profit customer.
Refer table-orders
ANS-SELECT Customer_ID,SUM(Profit) FROM orders GROUP BY Customer_ID 
ORDER BY SUM(Profit) DESC;

Q.18 Write a query to find the customer details having the highest Profit. The result should be such that you are easily able to find the highest profitable customer.
The query should have columns : Customer_ID, Customer_Name_, sum of Sales, sum of Profit, count of Order_ID.
Refer table-orders.
ANS-SELECT customers.Customer_ID,customers.Customer_Name_,SUM(orders.Sales),SUM(orders.Profit)
,COUNT(orders.Order_ID) FROM orders JOIN customers
ON orders.Customer_ID=customers.Customer_ID GROUP BY customers.Customer_ID,customers.Customer_Name_
ORDER BY SUM(orders.Profit) DESC;