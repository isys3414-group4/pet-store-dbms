-- ---------------------
-- CUSTOMERS table schema
CREATE SEQUENCE seq_customers_id
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NOCYCLE;

CREATE TABLE CUSTOMERS
(
    customer_id    INT,
    last_name      VARCHAR(10) NOT NULL,
    first_name     VARCHAR(10) NOT NULL,
    email          VARCHAR(50),
    phone          VARCHAR(20),
    membership     NUMBER(1, 0), /* 1 - true, 0 - false */
    royalty_points INT,
    CONSTRAINT pk_customer_id PRIMARY KEY (customer_id),
    CONSTRAINT regex_customer_email CHECK ( REGEXP_LIKE(email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$') OR
                                            email IS NULL ),
    CONSTRAINT regex_customer_phone CHECK ( REGEXP_LIKE(phone, '^\+?[0-9]{4,}$') OR phone IS NULL ),
    CONSTRAINT chk_customer_optional_contact CHECK (email IS NOT NULL OR phone IS NOT NULL),
    CONSTRAINT chk_customer_membership_points CHECK (
            (membership = 0 AND royalty_points IS NULL) OR
            (membership = 1 AND royalty_points IS NOT NULL)
        )
);


-- -----------------
-- PETS table schema
CREATE SEQUENCE seq_pets_id
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NOCYCLE;

CREATE TABLE PETS
(
    pet_id   INT,
    gender   VARCHAR(10) NOT NULL,
    species  VARCHAR(50) NOT NULL,
    pet_name VARCHAR(50) NOT NULL,
    owner_id INT         NOT NULL,
    CONSTRAINT pk_pets_id PRIMARY KEY (pet_id),
    FOREIGN KEY (owner_id) REFERENCES CUSTOMERS (customer_id) ON DELETE CASCADE
);


-- ---------------------
-- SERVICES table schema
CREATE SEQUENCE seq_services_id
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NOCYCLE;

CREATE TABLE SERVICES
(
    service_id          INT,
    service_name        VARCHAR(20) NOT NULL,
    service_description VARCHAR(200),
    list_price          FLOAT       NOT NULL,
    CONSTRAINT pk_service_id PRIMARY KEY (service_id)
);


-- ----------------------------------------
-- STAFF, ADMINS and EMPLOYEES table schema
CREATE SEQUENCE seq_admin_id
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NOCYCLE;

CREATE TABLE ADMINS
(
    admin_id     INT,
    admin_name   VARCHAR(30) NOT NULL,
    admin_gender VARCHAR(10) NOT NULL,
    admin_phone  VARCHAR(20),
    admin_email  VARCHAR(50),
    admin_salary FLOAT,
    CONSTRAINT pk_admin_id PRIMARY KEY (admin_id),
    CONSTRAINT chk_admin_optional_contact CHECK (admin_phone IS NOT NULL OR admin_email IS NOT NULL)
);

CREATE SEQUENCE seq_employee_id
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NOCYCLE;
CREATE TABLE EMPLOYEES
(
    employee_id     INT,
    employee_name   VARCHAR(30)   NOT NULL,
    employee_gender VARCHAR(10)   NOT NULL,
    employee_phone  VARCHAR(20),
    employee_email  VARCHAR(50),
    employee_salary FLOAT,
    no_of_sales     INT DEFAULT 0 NOT NULL,
    CONSTRAINT pk_employee_id PRIMARY KEY (employee_id),
    CONSTRAINT chk_employee_optional_contact CHECK (employee_email IS NOT NULL OR employee_phone IS NOT NULL)
);


-- -------------------
-- ORDERS table schema
CREATE SEQUENCE seq_orders_id
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NOCYCLE;

CREATE TABLE ORDERS
(
    order_id    INT,
    date_time   TIMESTAMP NOT NULL,
    customer_id INT       NOT NULL,
    pet_id      INT       NOT NULL,
    employee_id INT       NOT NULL,
    service_id  INT       NOT NULL,
    price       FLOAT     NOT NULL,
    discount    FLOAT,
    amount_paid FLOAT GENERATED ALWAYS AS (price - discount),
    CONSTRAINT pk_order_id PRIMARY KEY (order_id),
    CONSTRAINT fk_order_customer_id FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_order_pet_id FOREIGN KEY (pet_id) REFERENCES PETS (pet_id) ON DELETE CASCADE,
    CONSTRAINT fk_order_employee_id FOREIGN KEY (employee_id) REFERENCES EMPLOYEES (employee_id) ON DELETE CASCADE,
    CONSTRAINT fk_order_service_id FOREIGN KEY (service_id) REFERENCES SERVICES (service_id) ON DELETE CASCADE
);


-- -----------------------
-- Fill up CUSTOMERS table
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


-- ----------------------
-- Fill up SERVICES table
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


-- ------------------
-- Fill up PETS table
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


-- -------------------
-- Fill up ADMINS table
INSERT INTO ADMINS (admin_id, admin_name, admin_gender, admin_phone, admin_email, admin_salary)
VALUES (seq_admin_id.nextval, 'Thy Dam', 'Female', '0979631357', NULL, 12000000);
INSERT INTO ADMINS (admin_id, admin_name, admin_gender, admin_phone, admin_email, admin_salary)
VALUES (seq_admin_id.nextval, 'Phuoc Nguyen', 'Male', '0397744123', 'phuocnguyen787@gmail.com', 11000000);
INSERT INTO ADMINS (admin_id, admin_name, admin_gender, admin_phone, admin_email, admin_salary)
VALUES (seq_admin_id.nextval, 'Tien Ly', 'Female', '0328654210', 'tienly1907@gmail.com', 11000000);


-- -------------------
-- Fill up EMPLOYEES table
INSERT INTO EMPLOYEES (employee_id, employee_name, employee_gender, employee_phone, employee_phone, employee_salary, no_of_sales)
VALUES (seq_employee_id.nextval, 'Tin Tran', 'Male', '0866364551', 'tintran099@gmail.com', 8600000, 5);
INSERT INTO EMPLOYEES (employee_id, employee_name, employee_gender, employee_phone, employee_phone, employee_salary, no_of_sales)
VALUES (seq_employee_id.nextval, 'Trong Huynh', 'Male', '0377723461', 'tronghuynh377@gmail.com', 9000000, 10);
INSERT INTO EMPLOYEES (employee_id, employee_name, employee_gender, employee_phone, employee_phone, employee_salary, no_of_sales)
VALUES (seq_employee_id.nextval, 'Minh Le', 'Male', '0987863521', 'sadboyachau112@gmail.com', 8600000, 12);
INSERT INTO EMPLOYEES (employee_id, employee_name, employee_gender, employee_phone, employee_phone, employee_salary, no_of_sales)
VALUES (seq_employee_id.nextval, 'Ngoc Nguyen', 'Female', '0326975245', NULL, 9000000, 8);
INSERT INTO EMPLOYEES (employee_id, employee_name, employee_gender, employee_phone, employee_phone, employee_salary, no_of_sales)
VALUES (seq_employee_id.nextval, 'Som Pham', 'Male', '0965133242', 'contimdaudon666@gmail.com', 9000000, 7);


-- --------------------
-- Fill up ORDERS table
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
VALUES (seq_orders_id.nextval, TIMESTAMP '2022-08-04 13:15:12.20', 4, 10, 4, 1, 360000, 36000);
