/* 
You have two tables: Customer and Transaction.
- Customer Table Columns: Customer_id, Customer_Name, Registration_Date
- Transaction Table Columns: Transaction_id, Customer_id, Transaction_Date, Amount

-- Write an SQL query to calculate the total transaction amount for each customer for the current year. 
The output should contain Customer_Name and the total amount.
*/

-- 1. find total transaction amt group by each customer filter with current year 
-- put where condition to check if the transaction are current year year 1  



-- Create Customer table
CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Registration_Date DATE
);

-- Create Transaction table
CREATE TABLE Transaction (
    Transaction_id INT PRIMARY KEY,
    Customer_id INT,
    Transaction_Date DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

-- Insert records into Customer table
INSERT INTO Customers (Customer_id, Customer_Name, Registration_Date)
VALUES
    (1, 'John Doe', '2023-01-15'),
    (2, 'Jane Smith', '2023-02-20'),
    (3, 'Michael Johnson', '2023-03-10');

-- Insert records into Transaction table
INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES
    (201, 1, '2024-01-20', 50.00),
    (202, 1, '2024-02-05', 75.50),
    (203, 2, '2023-02-22', 100.00),
    (204, 3, '2022-03-15', 200.00),
    (205, 2, '2024-03-20', 120.75),
	(301, 1, '2024-01-20', 50.00),
    (302, 1, '2024-02-05', 75.50),
    (403, 2, '2023-02-22', 100.00),
    (304, 3, '2022-03-15', 200.00),
    (505, 2, '2024-03-20', 120.75);



SELECT * FROM customers;
SELECT * FROM transaction;




-- ----------------------------------------------
-- My solution
-- ----------------------------------------------



SELECT
	c.customer_name,
	c.customer_id,
	SUM(t.amount) total_amt
FROM customers as c
JOIN transaction as t
ON c.customer_id = t.customer_id
WHERE EXTRACT(YEAR FROM t.Transaction_Date) =  EXTRACT(YEAR FROM current_date) 
GROUP BY 1, 2

-- verifying it
SELECT
	SUM(amount)
FROM Transaction
WHERE customer_id = 1 AND EXTRACT(YEAR FROM Transaction_Date) = '2024'







