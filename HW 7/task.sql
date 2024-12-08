CREATE VIEW samsBills AS
SELECT 
    w.first_name,
    w.surname,
    b.bill_date,
    b.cust_name,
    b.bill_total
FROM 
    bills b
JOIN 
    waiters w ON b.waiter_id = w.waiter_id
WHERE 
    w.first_name = 'Sam' AND w.surname = 'Pitt';

--

SELECT * 
FROM samsBills
WHERE bill_total > 400;

--

CREATE VIEW roomTotals AS
SELECT 
    r.room_name,
    SUM(b.bill_total) AS total_sum
FROM 
    rooms r
JOIN 
    bills b ON r.room_id = b.room_id
GROUP BY 
    r.room_name;

--

CREATE VIEW teamTotals AS
SELECT 
    CONCAT(w.first_name, ' ', w.surname) AS headwaiter_name,
    SUM(b.bill_total) AS total_sum
FROM 
    bills b
JOIN 
    waiters w ON b.waiter_id = w.waiter_id
GROUP BY 
    w.first_name, w.surname;
