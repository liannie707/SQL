-- Write a select statement to return all columns and rows from the customer table.
SELECT * 
FROM customer;

-- Write a query to select first name, last name, and email from the customer table.
SELECT first_name, last_name, email
FROM customer;

-- Write a query to return all rows and columns from the film table.
SELECT * 
FROM film;

-- Write a query to return unique rows from the release_year column in the film table.
SELECT DISTINCT release_year
FROM film;

-- Write a query to return unique rows from the rental_rate column in the film table.
SELECT DISTINCT rating
FROM film;

-- A customer left us some feedback about our store.  Write a query to find her email address – for Nancy Thomas.
SELECT email
FROM customer
WHERE first_name = 'Nancy'
AND last_name = 'Thomas';

-- We’re trying to find a customer located at a certain address ‘259 Ipoh Drive’ – can you find their phone number? 
SELECT address, phone
FROM address
WHERE address = '259 Ipoh Drive'

-- Write a query from the customer table, where store id is 1 and address id is greater than 150.
SELECT *
FROM customer
WHERE store_id = '1'
AND address_id > 150;

-- Write a query from the payment table where the amount is either 4.99 or 1.99.
SELECT * 
FROM payment
WHERE amount = 4.99 OR amount = 1.99;

-- Write a query to return a list of transactions from the payment table where the amount is greater than 5.
SELECT *
FROM payment
WHERE amount > 5




