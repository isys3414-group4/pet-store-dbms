-- Customers: Regular customers
SELECT C.customer_id,
       C.last_name,
       C.first_name,
       C.email,
       C.phone,
       C.membership,
       C.royalty_points,
       COUNT(O.order_id) AS orders
FROM CUSTOMERS C,
     ORDERS O
WHERE C.customer_id = O.customer_id
  AND ROWNUM <= 5
GROUP BY C.customer_id, C.first_name, C.last_name, C.email, C.phone, C.membership, C.royalty_points
ORDER BY orders DESC;

-- Customers: Membership proportion
SELECT C.membership AS membership, COUNT(C.membership) AS quantity
FROM CUSTOMERS C
GROUP BY C.membership;

-- Services: Popular services
SELECT S.service_id, S.service_name, S.service_description, S.list_price, COUNT(O.order_id) AS orders
FROM SERVICES S,
     ORDERS O
WHERE S.service_id = O.service_id AND ROWNUM <= 5
GROUP BY S.service_id, S.service_name, S.service_description, S.list_price
ORDER BY orders DESC;

-- Services: Service names and the number of orders for each service
SELECT S.service_name, COUNT(O.order_id) AS orders
FROM SERVICES S,
     ORDERS O
WHERE S.service_id = O.service_id
GROUP BY S.service_name, S.service_id;

- Employees: Top employees
SELECT E.employee_id, S.staff_name, E.no_of_sales
FROM EMPLOYEES E,
     STAFF S
WHERE S.staff_id = E.employee_id
GROUP BY S.staff_name, E.employee_id, E.no_of_sales
ORDER BY E.no_of_sales DESC;-

-- Employees: Sales statistics
SELECT E.employee_id, E.employee_name, E.no_of_sales
FROM EMPLOYEES E
GROUP BY E.employee_id, E.employee_name, E.no_of_sales;

-- Orders: Revenue
SELECT TO_CHAR(O.date_time, 'YYYY-MM-DD') AS sales_date, SUM(DISTINCT O.amount_paid) AS revenue
FROM ORDERS O
GROUP BY TO_CHAR(O.date_time, 'YYYY-MM-DD')
ORDER BY sales_date;

-- Orders: Average orders per weekday
SELECT TO_CHAR(O.date_time, 'fmDay') AS weekday, COUNT(DISTINCT O.order_id) AS no_of_orders
FROM ORDERS O
GROUP BY TO_CHAR(O.date_time, 'fmDay'), MOD(TO_CHAR(O.date_time, 'D') + 5, 7)
ORDER BY MOD(TO_CHAR(O.date_time, 'D') + 5, 7);

-- Employees: Gender proportion
SELECT E.EMPLOYEE_GENDER, COUNT(*) AS QUANTITY
FROM EMPLOYEES E
GROUP BY E.EMPLOYEE_GENDER;

-- Staff: Staff that has salary above average
SELECT E.EMPLOYEE_ID, E.EMPLOYEE_NAME, E.EMPLOYEE_SALARY
FROM EMPLOYEES E
WHERE E.EMPLOYEE_SALARY >= (SELECT AVG(E.EMPLOYEE_SALARY)
                            FROM EMPLOYEES);