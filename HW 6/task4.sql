-- 1
SELECT cust_name
FROM restbill
WHERE bill_total > 450 AND waiter_no IN (
	SELECT staff_no FROM reststaff WHERE headwaiter = (
        SELECT staff_no FROM reststaff WHERE first_name = "Charles"));
        
-- 2
SELECT first_name , surname 
FROM reststaff
WHERE headwaiter = (
	SELECT headwaiter FROM reststaff WHERE staff_no = (
		SELECT waiter_no FROM restbill WHERE cust_name LIKE "Nerida%" AND bill_date = 160111));
        
-- 3
SELECT cust_name
FROM restbill
WHERE bill_total = (SELECT MIN(bill_total) FROM restbill);

-- 4
SELECT first_name , surname 
FROM reststaff
WHERE staff_no NOT IN (
	SELECT waiter_no FROM restbill);

-- 5
SELECT b.cust_name, h.first_name AS headwaiter_first_name, h.surname AS headwaiter_surname, t.room_name
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff h ON rm.headwaiter = h.staff_no
WHERE b.bill_total = (
    SELECT MAX(bill_total) FROM restBill
);
