/* Fill up CUSTOMERS table */
INSERT ALL
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Tuong', 'Vuong', 'tuong2304@gmail.com', '0907693323', 1, 30)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Sehun', 'Oh', 'meomeo@gmail.com', '0901030888', 0, NULL)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Taylor', 'Swift', NULL, '0303456882', 1, 5)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Huan', 'Ngo', 'huan1204@gmail.com', '0304562777', 1, 95)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Edogawa', 'Conan', NULL, '0262775827', 0, NULL)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Tony', 'Stark', 'ironman@gmail.com', '0917234552', 1, 12)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Satoru', 'Gojo', 'rubik@gmail.com', '0292333688', 0, NULL)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Qui', 'Nguyen', NULL, '0226175888', 1, 110)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Thor', 'Odison', NULL, '0226175827', 1, 12)
    INTO CUSTOMERS (customer_id, first_name, last_name, email, phone, membership, royalty_points)
VALUES (seq_customers_id.nextval, 'Hien', 'Tran', 'cuca@gmail.com', '0925686222', 1, 80)
SELECT 1
FROM DUAL;


/* Fill up SERVICES table */
INSERT ALL
    INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet grooming', 'Include bathing, brushing and styling the pet. Normally take 2-3 hours', 360000)
    INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet bathing', 'Pay attention to hygienic care. Normally take 1 hour', 150000)
    INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet sitting', 'Look after and feed the pet for a day', 120000)
    INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Dog walking', 'Take the dog out for a walk for 1 hour', 75000)
    INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Pet massage', 'Apply massage therapy to relieve the pet from stress for 1 hour', 95000)
    INTO SERVICES (service_id, service_name, service_description, list_price)
VALUES (seq_services_id.nextval, 'Dog training', 'Provide basic obedience training for the dog. Take 1 hour per section', 75000)
SELECT 1
FROM DUAL;



/* Fill up PETS table */
INSERT All
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pets_id.nextval, 'Boy', 'Corgi', 'Bin', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Tuong' AND last_name = 'Vuong'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'Husky', 'Bella',(SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Sehun' AND last_name = 'Oh'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pets_id.nextval, 'Girl', 'American Shorthair Cat', 'Nala',(SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Taylor' AND last_name = 'Swift'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pet_id.nextval, 'Boy', 'Bombay Cat', 'Leo', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Huan' AND last_name = 'Ngo'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pet_id.nextval, 'Girl', 'Bull Dog', 'Kitty', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Edogawa' AND last_name = 'Conan'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pet_id.nextval, 'Boy', 'Poodle', 'Charlie', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Tony' AND last_name = 'Stark'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pet_id.nextval, 'Boy', 'Bengal Cat', 'Teddy', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Satoru' AND last_name = 'Gojo'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pet_id.nextval, 'Girl', 'Golden', 'Max', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Qui' AND last_name = 'Nguyen'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pet_id.nextval, 'Boy', 'Chihuahua', 'Loki', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Thor' AND last_name = 'Odison'))
    INTO PETS (pet_id, gender, species, pet_name, ownner_id)
VALUES (seq_pet_id.nextval, 'Girl', 'Bengal Cat', 'Chloe', (SELECT customer_id FROM CUSTOMERS WHERE first_name = 'Hien' AND last_name = 'Tran'))
SELECT 1
From DUAL;

/* Full up STAFF table */
INSERT All
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Tin Tran', 'Male', '0866364551', 'tintran099@gmail.com', 8600000)
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Trong Huynh', 'Male', '0377723461', 'tronghuynh377@gmail.com', 9000000)
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Minh Le', 'Male', '0987863521', 'sadboyachau112@gmail.com', 86000000)
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Ngoc Nguyen', 'Female', '0326975245', NULL, 90000000)
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Thy Dam', 'Female', '0979631357', NULL, 12000000)
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Som Pham', 'Male', '0965133242', 'contimdaudon666@gmail.com', 9000000)
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Phuoc Nguyen', 'Male', '0397744123', 'phuocnguyen787@gmail.com', 11000000)
    INTO STAFF (staff_id, staff_name, gender, phone_number, email, salary)
VALUES (seq_staff_id.nextval, 'Tien Ly', 'Female', '0328654210', 'tienly1907@gmail.com', 11000000)
SELECT 1
From DUAL;

/*Fill up ADMINS table */
INSERT All
    INTO ADMINS (admin_id)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Thy Dam')
    INTO ADMINS (admin_id)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Phuoc Nguyen')
    INTO ADMINS (admin_id)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Tien LY');

/* Fill up EMLOYEE table */
INSERT All
    INTO EMPLOYEES (employee_id, no_of_sale)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Tin Tran', 5)
    INTO EMPLOYEES (employee_id, no_of_sale)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Trong Huynh', 10)
    INTO EMPLOYEE (employee_id, no_of_sale)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Minh LE', NUll)
    INTO EMPLOYEES (employee_id, no_of_sale)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Ngoc Nguyen', 8)
    INTO EMPLOYEE (employee_id, no_of_sale)
VALUES (SELECT staff_id FROM STAFF WHERE staff_name = 'Son Pham', 7);

