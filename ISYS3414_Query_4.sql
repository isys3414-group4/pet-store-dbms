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
GROUP BY C.customer_id, C.first_name, C.last_name, C.email, C.phone, C.membership, C.royalty_points
ORDER BY orders DESC
    FETCH FIRST 5 ROWS ONLY;

-- Customers: Membership proportion
SELECT C.membership AS membership, COUNT(C.membership) AS quantity
FROM CUSTOMERS C
GROUP BY C.membership;

-- Services: Popular services
SELECT S.service_id, S.service_name, S.service_description, S.list_price, COUNT(O.order_id) AS orders
FROM SERVICES S,
     ORDERS O
WHERE S.service_id = O.service_id
GROUP BY S.service_id, S.service_name, S.service_description, S.list_price
ORDER BY orders DESC
    FETCH FIRST 3 ROWS ONLY;

-- Services: Service names and the number of orders for each service
SELECT S.service_name, COUNT(O.order_id) AS orders
FROM SERVICES S,
     ORDERS O
WHERE S.service_id = O.service_id
GROUP BY S.service_name, S.service_id;

-- Employees: Top employees
SELECT E.employee_id, E.employee_name, COUNT(order_id) AS no_of_orders
FROM EMPLOYEES E,
     ORDERS O
WHERE E.employee_id = O.employee_id
GROUP BY E.employee_id, E.employee_name
ORDER BY no_of_orders DESC
    FETCH FIRST 3 ROWS ONLY;

-- Employees: Sales statistics
SELECT E.employee_id, E.employee_name, COUNT(order_id) AS quantity
FROM EMPLOYEES E,
     ORDERS O
WHERE E.employee_id = O.employee_id
GROUP BY E.employee_id, E.employee_name;

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

-- Employees: Employees whose salary is above average
SELECT E.EMPLOYEE_ID, E.EMPLOYEE_NAME, E.EMPLOYEE_SALARY
FROM EMPLOYEES E
WHERE E.EMPLOYEE_SALARY >= (SELECT AVG(E.EMPLOYEE_SALARY)
                            FROM EMPLOYEES);

-- Employees: Employee who hasn't process any orders in the period
SELECT E.employee_id, E.employee_name
FROM EMPLOYEES E
WHERE E.employee_id NOT IN (SELECT employee_id
                            FROM ORDERS);

-- Incentive for employees who got tips
SELECT DISTINCT O.employee_id,
                E.EMPLOYEE_NAME,
                (CASE
                     WHEN O.tip >= 50000 THEN 500000
                     WHEN O.tip >= 20000 THEN 200000
                     ELSE 150000 END)
                    AS incentive
FROM EMPLOYEES E,
     ORDERS O
WHERE E.employee_id = O.employee_id
  AND O.tip IS NOT NULL
ORDER BY incentive DESC;

-- Employees: Pairs of employees having the same manager will work together
SELECT DISTINCT E1.employee_id, E1.employee_name, E2.employee_id, E2.employee_name
FROM EMPLOYEES E1,
     EMPLOYEES E2
WHERE E1.manager_id = E2.manager_id
  AND E1.employee_id > E2.employee_id;

-- Pets: Pet Id, name of pets and name of services that each pet uses regularly
SELECT DISTINCT P.pet_id, P.pet_name, S.service_name, COUNT(DISTINCT order_id) AS times
FROM PETS P,
     SERVICES S,
     ORDERS O
WHERE P.pet_id = O.pet_id
  AND S.service_id = O.service_id
GROUP BY S.service_name, P.pet_name, P.pet_id
ORDER BY times DESC;

-- Pets: Pets that haven't come to the store so far
SELECT P.pet_id, P.pet_name, C.first_name AS customer_firstname, C.last_name AS customer_lastname
FROM PETS P,
     CUSTOMERS C
WHERE C.customer_id = P.owner_id
  AND P.pet_id NOT IN (SELECT O.PET_ID
                       FROM ORDERS O);

-- Employees: Outstanding new employee and incentive
SELECT E.employee_id,
       E.employee_name,
       COUNT(order_id)               AS orders_processed,
       (E.employee_salary + 1000000) AS increased_salary
FROM EMPLOYEES E,
     ORDERS O
WHERE E.employee_id = O.employee_id
  AND E.starting_date BETWEEN '01-JAN-2022' AND '01-AUG-2022'
GROUP BY E.employee_id, E.employee_name, (E.employee_salary + 1000000)
ORDER BY orders_processed;