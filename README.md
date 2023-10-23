# Community-Loan-Scheme-Database-Project

This repository contains: 

* the mySQL project code for the database I have created for the final presentation.
* a Powerpoint presentation that provides an overview of the functionality of the database in PowerPoint and PDF formats


You can contact me via email at isobelcarysolney@gmail.com

# Notes About This Project

Where I live, I have seen a number of community loan schemes startup. These schemes allow people who face financial difficulties the ability to hire everyday items that they would otherwise not be able to utilise.  For example - a lawnmower or pressure washer. 

I thought it would be an interesting project to replicate this kind of loan scheme.

So the database code creates a database named community_loan_scheme with five tables: 

suppliers, products, goods, loans, and customers. 

The tables are related to each other as follows:

•	A supplier can have many products, but a product can only have one supplier.
•	A good is associated with a single product.
•	A loan is associated with a single customer and a single good.

The database can be used to track the following information:

•	The names, addresses, and contact information of suppliers
•	The names, descriptions, and suppliers of products
•	The status of goods (e.g., available, rented, damaged)
•	The loan start and end dates, status, and customers and goods associated with loans
•	The names, addresses, and contact information of customers

This information can be used to manage the community loan scheme, such as to:

•	Track the availability of goods
•	Assign goods to customers
•	Track the status of loans
•	Contact customers about upcoming loan due dates
•	Generate reports on the usage of goods and the performance of the loan scheme

# Pre-requisites

I have completed the six fundamental activities and from the advanced requirenents I have created:

* a sample stored procedure
* a sample view that uses three base tables
* an example query that uses GROUP BY
