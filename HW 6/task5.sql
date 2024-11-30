SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.staff_no, s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 2;

--

SELECT t.room_name, COUNT(*) AS table_count
FROM restRest_table t
WHERE t.no_of_seats > 6
GROUP BY t.room_name;

--

SELECT t.room_name, SUM(b.bill_total) AS total_bill_amount
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
GROUP BY t.room_name;

--

SELECT hw.first_name AS headwaiter_first_name, hw.surname AS headwaiter_surname, SUM(b.bill_total) AS total_bill_amount
FROM restStaff w
JOIN restStaff hw ON w.headwaiter = hw.staff_no
JOIN restBill b ON b.waiter_no = w.staff_no
GROUP BY hw.staff_no, hw.first_name, hw.surname
ORDER BY total_bill_amount DESC;

--

SELECT b.cust_name, AVG(b.bill_total) AS avg_bill_amount
FROM restBill b
GROUP BY b.cust_name
HAVING AVG(b.bill_total) > 400.00;

--

SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.staff_no, s.first_name, s.surname, b.bill_date
HAVING COUNT(b.bill_no) >= 3;
