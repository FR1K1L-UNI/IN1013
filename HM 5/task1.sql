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
FROM restStaff
WHERE staff_no IN (SELECT DISTINCT headwaiter FROM restStaff WHERE headwaiter IS NOT NULL);

SELECT *
FROM restBill
WHERE bill_date BETWEEN 160201 AND 160229;

SELECT DISTINCT bill_date
FROM restBill
WHERE bill_date BETWEEN 150101 AND 151231
ORDER BY bill_date;
