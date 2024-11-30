SELECT DISTINCT b.cust_name
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE b.bill_total > 450.00
  AND s.first_name = 'Charles'
  AND s.surname = 'Watson';
  
--

SELECT s.first_name, s.surname
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE b.cust_name = 'Nerida Smith'
  AND b.bill_date = 160111;
  
--

SELECT b.cust_name
FROM restBill b
WHERE b.bill_total = (SELECT MIN(bill_total) FROM restBill);

--

SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no NOT IN (SELECT DISTINCT b.waiter_no FROM restBill b);

--

SELECT b.cust_name, hs.first_name AS headwaiter_first_name, hs.surname AS headwaiter_surname, t.room_name
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restRoom_management rm ON t.room_name = rm.room_name AND b.bill_date = rm.room_date
JOIN restStaff hs ON rm.headwaiter = hs.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);


