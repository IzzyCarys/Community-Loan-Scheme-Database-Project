use community_loan_scheme ;
-- Select functions to view all 5 tables
select * from customers ;
select * from goods ;
select * from products ;
select * from loans ;
select * from suppliers ;

-- This joins the loans table with the customers table to get the names of the customers who have loaned a pressure washer (good_id 1)

SELECT loans.customer_id, customers.name FROM loans
JOIN customers ON loans.customer_id = customers.id
where good_id =1 ;

-- Get all loans in the database
SELECT * FROM loans;
 
-- Get all loans for a specific customer
SELECT * FROM loans WHERE customer_id = 3;
 
-- Get all loans for a specific good
SELECT * FROM loans WHERE good_id = 1;
 
-- Get all loans that are currently active
SELECT * FROM loans WHERE status = 'active';
 
-- Get all loans that are due to be returned in the next week
SELECT * FROM loans WHERE loan_end_date BETWEEN CURDATE() AND CURDATE() + INTERVAL 7 DAY;
 
-- Get the most popular loan items
SELECT good_id, COUNT(*) AS loan_count FROM loans GROUP BY good_id ORDER BY loan_count DESC;
 
-- Get the average loan duration
SELECT AVG(loan_end_date - loan_start_date) AS avg_loan_duration FROM loans;
 
-- Get the total number of loans made to date
SELECT COUNT(*) AS total_loans FROM loans;


-- Stored function, finds average loan duration for different goods
use community_loan_scheme ;

DELIMITER //

CREATE FUNCTION get_average_loan_duration_by_product(product_id INT)

RETURNS DECIMAL(10,2) 

DETERMINISTIC

BEGIN
  DECLARE AVG_LOAN_DURATION DECIMAL(10,2) ;
  
  SELECT AVG(loan_end_date - loan_start_date) INTO AVG_LOAN_DURATION FROM loans WHERE good_id = product_id;
  
  RETURN AVG_LOAN_DURATION;
END //
 
DELIMITER ;

SELECT get_average_loan_duration_by_product(1);

-- Query with a subquery that also contains a 'group and order by'
-- It returns the names of the 4 customers who have taken out the most loans, ordered by the number of loans they have taken out.

SELECT customers.name, COUNT(*) AS loan_count
FROM loans
JOIN customers ON loans.customer_id = customers.id
GROUP BY customers.name
ORDER BY loan_count DESC
LIMIT 4; 


-- Creates a view linking 3 tables, with a query showing all loans due to be returned in the next week 

CREATE VIEW loan_report AS
SELECT
  customers.name AS customer_name,
  products.name AS product_name,
  loans.loan_start_date AS loan_start_date,
  loans.loan_end_date AS loan_end_date,
  loans.status AS loan_status
FROM loans
JOIN customers ON loans.customer_id = customers.id
JOIN products ON loans.good_id = products.id;

SELECT * FROM loan_report WHERE loan_end_date BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL 7 DAY;

-- Stored procedure, which is used to input details to create a new loan

DELIMITER //
CREATE PROCEDURE create_new_loan(
  IN customer_id INT,
  IN good_id INT,
  IN loan_start_date DATE,
  IN loan_end_date DATE
)
BEGIN
  INSERT INTO loans (customer_id, good_id, loan_start_date, loan_end_date, status)
  VALUES (customer_id, good_id, loan_start_date, loan_end_date, 'pending');
END //
DELIMITER ;

CALL create_new_loan(1, 2, '2023-12-17', '2023-12-24');


