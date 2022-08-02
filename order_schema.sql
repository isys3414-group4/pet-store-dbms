CREATE TABLE Orders (
    order_id INT IDENTITY(1,1),
    date_time DATETIME,
    customer_id INT NOT NULL,
    pet_id INT NOT NULL,
    employee_id INT NOT NULL,
    service_id INT NOT NULL,
    discount INT,
    amount_paid INT NOT NULL,
    CONSTRAINT pk_order PRIMARY KEY (order_id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT fk_pet FOREIGN KEY (pet_id) REFERENCES PET(pet_ID),
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(staff_id),
    CONSTRAINT fk_service FOREIGN KEY (service_id) REFERENCES Services(service_id)
);