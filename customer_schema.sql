CREATE TABLE Customer (
    customer_id INT IDENTITY(100000, 1),
    last_name VARCHAR(10) NOT NULL,
    first_name VARCHAR(10) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(20) NOT NULL,
    membership VARCHAR(5) NOT NULL CHECK (membership IN('Yes', 'No')),
    royalty_points INT,
    CONSTRAINT pk_cusid PRIMARY KEY(customer_id));