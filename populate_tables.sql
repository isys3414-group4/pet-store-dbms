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



