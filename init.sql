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
    CONSTRAINT chk_optional_contact CHECK (email IS NOT NULL OR phone IS NOT NULL),
    CONSTRAINT chk_membership_points CHECK (
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
CREATE SEQUENCE seq_staff_id
    START WITH 1
    INCREMENT BY 1
    CACHE 10
    NOCYCLE;

CREATE TABLE STAFF
(
    staff_id     INT,
    staff_name   VARCHAR(30) NOT NULL,
    gender       VARCHAR(10) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email        VARCHAR(50),
    salary       FLOAT,
    CONSTRAINT pk_staff_id PRIMARY KEY (staff_id)
);
CREATE TABLE ADMINS
(
    admin_id INT,
    CONSTRAINT fk_admin_id FOREIGN KEY (admin_id) REFERENCES STAFF (staff_id) ON DELETE CASCADE,
    CONSTRAINT pk_admin_id PRIMARY KEY (admin_id)
);
CREATE TABLE EMPLOYEES
(
    employee_id INT,
    no_of_sales INT DEFAULT 0 NOT NULL,
    CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES STAFF (staff_id) ON DELETE CASCADE,
    CONSTRAINT pk_employee_id PRIMARY KEY (employee_id)
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
    CONSTRAINT fk_order_customer_id FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (customer_id),
    CONSTRAINT fk_order_pet_id FOREIGN KEY (pet_id) REFERENCES PETS (pet_id),
    CONSTRAINT fk_order_employee_id FOREIGN KEY (employee_id) REFERENCES EMPLOYEES (employee_id),
    CONSTRAINT fk_order_service_id FOREIGN KEY (service_id) REFERENCES SERVICES (service_id)
);
