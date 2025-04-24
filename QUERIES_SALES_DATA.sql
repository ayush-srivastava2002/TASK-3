#displaying dataset
SELECT * FROM SALES_DATA ;
SELECT * FROM SALES_DATA WHERE Sale_Date >'2023-11-02';
#sorting quantity in ascending order
SELECT * FROM SALES_DATA ORDER BY Quantity;
#displaying number of each product sold
SELECT Product,sum(Quantity) AS total_quantity FROM SALES_DATA GROUP BY Product;
#displaying number of each product sold region wise 
SELECT Product,Customer_Region,sum(Quantity) AS total_quantity FROM SALES_DATA 
GROUP BY Product,Customer_Region ORDER BY Product;
#displaying total sales in each state
SELECT Product,Customer_Region,sum(Quantity)AS total_quantity,sum(Quantity*Price_per_Unit) AS Total_sale_$
FROM SALES_DATA GROUP BY Product,Customer_Region ORDER BY Product;
#displaying total sales in each region with qunatity>40
SELECT Product,Customer_Region,sum(Quantity) AS total_quantity,sum(Quantity*Price_per_Unit) AS Total_sale_$
FROM SALES_DATA GROUP BY Product,Customer_Region HAVING total_quantity>40 ORDER BY Product ;

ALTER TABLE managers 
CHANGE Customer_Region Region VARCHAR(50) NOT NULL;

#PERFORMING JOINS
CREATE TABLE JOINED AS
SELECT * FROM SALES_DATA AS S INNER JOIN managers AS M ON S.Customer_Region=M.Region;
SELECT * FROM JOINED;


