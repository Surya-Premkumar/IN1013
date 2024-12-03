use restaurant;
-- 1
CREATE OR REPLACE VIEW samsBills
AS SELECT first_name, surname, bill_date, cust_name, bill_total 
FROM restbill
INNER JOIN reststaff
ON restbill.waiter_no = reststaff.staff_no
WHERE waiter_no=4;

-- 2
SELECT *
FROM samsBills
WHERE bill_total>400;

-- 3
CREATE OR REPLACE VIEW roomTotals 
AS SELECT rt.room_name, SUM(rb.bill_total) AS total_sum
FROM restBill rb 
INNER JOIN restRest_table rt
ON rb.table_no = rt.table_no
GROUP BY rt.room_name;

-- 4
CREATE OR REPLACE VIEW teamTotals AS
SELECT CONCAT(hw.first_name, ' ', hw.surname) AS headwaiter_name, SUM(b.bill_total) AS total_sum
FROM restBill b
JOIN restStaff w 
ON b.waiter_no = w.staff_no
JOIN restStaff hw
ON w.headwaiter = hw.staff_no
GROUP BY headwaiter_name;



SELECT *
FROM teamTotals 