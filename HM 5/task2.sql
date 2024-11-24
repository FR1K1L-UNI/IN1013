SELECT SUM(bill_total) AS Income
FROM restBill;

SELECT SUM(bill_total) AS "Feb Income"
FROM restBill
WHERE bill_date BETWEEN 160201 AND 160229;

SELECT AVG(bill_total) AS Average_Bill
FROM restBill
WHERE table_no = 2;

SELECT 
    MIN(no_of_seats) AS Min,
    MAX(no_of_seats) AS Max,
    AVG(no_of_seats) AS Avg
FROM restRest_table
WHERE room_name = 'Blue';

SELECT COUNT(DISTINCT table_no) AS Distinct_Tables
FROM restBill
WHERE waiter_no IN (004, 002);
