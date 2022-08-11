/* Fill up CUSTOMERS table */
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Tuong', 'Vuong', 'tuong2304@gmail.com', '0907693323', 1, 30);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Sehun', 'Oh', 'meomeo@gmail.com', '0901030888', 0, NULL);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Taylor', 'Swift', NULL, '0303456882', 1, 5);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Huan', 'Ngo', 'huan1204@gmail.com', '0304562777', 1, 95);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Edogawa', 'Conan', NULL, '0262775827', 0, NULL);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Tony', 'Stark', 'ironman@gmail.com', '0917234552', 1, 12);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Satoru', 'Gojo', 'rubik@gmail.com', '0292333688', 0, NULL);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Qui', 'Nguyen', NULL, '0226175888', 1, 110);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Thor', 'Odinson', NULL, '0226175827', 1, 12);
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Hien', 'Tran', 'cuca@gmail.com', '0925686222', 1, 80);


/* Fill up SERVICES table */
INSERT INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet grooming',
        'Include bathing, brushing and styling the pet. Normally take 2-3 hours', 360000);
INSERT INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet bathing', 'Pay attention to hygienic care. Normally take 1 hour', 150000);
INSERT INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet sitting', 'Look after and feed the pet for a day', 120000);
INSERT INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Dog walking', 'Take the dog out for a walk for 1 hour', 75000);
INSERT INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet massage', 'Apply massage therapy to relieve the pet from stress for 1 hour',
        95000);
INSERT INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Dog training',
        'Provide basic obedience training for the dog. Take 1 hour per session', 75000);


/* Fill up PETS table */
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Boy', 'Corgi', 'Bin', 2);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'Husky', 'Bella', 6);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'American Shorthair Cat', 'Nala', 10);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Boy', 'Bombay Cat', 'Leo', 2);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'Bull Dog', 'Kitty', 1);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Boy', 'Poodle', 'Charlie', 8);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Boy', 'Bengal Cat', 'Teddy', 7);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'Golden', 'Max', 9);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Boy', 'Chihuahua', 'Loki', 5);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'Bengal Cat', 'Chloe', 4);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Boy', 'Corgi', 'Lucky', 3);
INSERT INTO PETS (pet_id, gender, species, pet_name, owner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'British Longhair', 'Mina', 7);


/* Full up STAFF table */
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Tin Tran', 'Male', '0866364551', 'tintran099@gmail.com', 8600000);
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Trong Huynh', 'Male', '0377723461', 'tronghuynh377@gmail.com', 9000000);
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Minh Le', 'Male', '0987863521', 'sadboyachau112@gmail.com', 86000000);
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Ngoc Nguyen', 'Female', '0326975245', NULL, 90000000);
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Thy Dam', 'Female', '0979631357', NULL, 12000000);
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Som Pham', 'Male', '0965133242', 'contimdaudon666@gmail.com', 9000000);
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Phuoc Nguyen', 'Male', '0397744123', 'phuocnguyen787@gmail.com', 11000000);
INSERT INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Tien Ly', 'Female', '0328654210', 'tienly1907@gmail.com', 11000000);


/*Fill up ADMINS table */
INSERT INTO ADMINS (admin_id)
SELECT staff_id
FROM STAFF
WHERE staff_name = 'Thy Dam';

INSERT INTO ADMINS (admin_id)
SELECT staff_id
FROM STAFF
WHERE staff_name = 'Phuoc Nguyen';

INSERT INTO ADMINS (admin_id)
SELECT staff_id
FROM STAFF
WHERE staff_name = 'Tien Ly';


/* Fill up EMPLOYEE table */
INSERT INTO EMPLOYEES (employee_id, no_of_sales)
SELECT staff_id,
       5
FROM STAFF
WHERE staff_name = 'Tin Tran';

INSERT INTO EMPLOYEES (employee_id, no_of_sales)
SELECT staff_id,
       10
FROM STAFF
WHERE staff_name = 'Trong Huynh';

INSERT INTO EMPLOYEES (employee_id, no_of_sales)
SELECT staff_id,
       12
FROM STAFF
WHERE staff_name = 'Minh Le';

INSERT INTO EMPLOYEES (employee_id, no_of_sales)
SELECT staff_id,
       8
FROM STAFF
WHERE staff_name = 'Ngoc Nguyen';

INSERT INTO EMPLOYEES (employee_id, no_of_sales)
SELECT staff_id,
       7
FROM STAFF
WHERE staff_name = 'Som Pham';


/* Fill up ORDERS table */
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP '2022-07-29 08:15:30.11', 7, 12, 2, 1, 360000, 0);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP '2022-07-30 13:02:45.23', 10, 3, 6, 3, 120000, 12000);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP'2022-07-31 09:15:20.20', 2, 1, 3, 5, 95000, 0);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP'2022-08-01 12:20:32.12', 7, 12, 3, 5, 95000, 9500);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP'2022-08-01 14:35:30.40', 9, 8, 1, 6, 75000, 0);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP'2022-08-01 15:30:45.24', 3, 11, 4, 4, 75000, 0);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP'2022-08-02 10:46:56.12', 5, 9, 3, 2, 150000, 15000);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP'2022-08-03 14:20:23.50', 7, 12, 1, 1, 360000, 0);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP '2022-08-04 08:15:19.20', 8, 6, 3, 5, 95000, 0);
INSERT INTO ORDERS(order_id, date_time, customer_id, pet_id, employee_id, service_id, price, discount)
VALUES (seq_orders_id.nextval, TIMESTAMP '2022-08-04 13:15:12.20' , 4, 10, 4, 1, 360000, 36000);
