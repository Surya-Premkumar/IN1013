-- 1 
SELECT first_name, surname
FROM restbill B  -- restroom_management
INNER JOIN reststaff S
ON B.waiter_no = S.staff_no
WHERE cust_name = "Tanya Singh";

-- 2
SELECT room_date
FROM restroom_management
WHERE headwaiter=10 and room_date LIKE "1602%" and room_name="Green";

-- 3
SELECT first_name, surname
FROM reststaff
WHERE headwaiter = (SELECT headwaiter FROM reststaff WHERE first_name="Zoe" AND surname="Ball");

-- 4
SELECT cust_name, bill_total, first_name, surname
FROM restbill B
INNER JOIN reststaff S
ON B.waiter_no = S.staff_no
ORDER BY bill_total DESC;


-- 5
SELECT first_name, surname
FROM reststaff 
WHERE headwaiter IN (
	SELECT headwaiter FROM restroom_management WHERE room_name IN (
		SELECT  T.room_name FROM restrest_table T INNER JOIN restbill B ON T.table_no = B.table_no WHERE T.table_no IN (
			SELECT table_no FROM restbill WHERE bill_no = 14 OR bill_no = 17)
	)
);

-- 6
SELECT first_name, surname
FROM reststaff
WHERE headwaiter IN (
	SELECT headwaiter FROM restroom_management WHERE room_date=160312 AND room_name="Blue");
