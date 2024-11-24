-- 1
SELECT SUM(bill_total) AS 'Income'
FROM restBill;

-- 2
SELECT SUM(bill_total) AS 'Feb Income'
FROM restBill
WHERE bill_date BETWEEN 160200 AND 160229;

-- 3
SELECT AVG(bill_total)
FROM restBill
WHERE table_no = '2';

-- 4
SELECT MIN(no_of_seats) AS 'Min', MAX(no_of_seats) AS 'Max', AVG(no_of_seats) AS 'Avg'
FROM restRest_table
WHERE room_name = 'Blue';

-- 5
SELECT DISTINCT COUNT(table_no)
FROM restBill
WHERE waiter_no = '004' AND '002';