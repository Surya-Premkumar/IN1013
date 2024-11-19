SELECT bill_date, bill_total
FROM restBill
WHERE cust_name = 'Bob Crow';

SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '% Smith'
ORDER BY cust_name DESC;

SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '% C%';

SELECT first_name, surname
FROM reststaff
WHERE headwaiter IS NOT NULL;

SELECT *
FROM restbill
WHERE bill_date LIKE '1602%';

SELECT DISTINCT bill_date
FROM restbill
WHERE bill_date LIKE '15%';