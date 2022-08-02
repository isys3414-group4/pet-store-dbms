CREATE TABLE Services (
    service_id INT IDENTITY(100,1),
    service__name VARCHAR(20) NOT NULL,
    service_description VARCHAR(200),
    list_price INT NOT NULL,
    CONSTRAINT pk_service PRIMARY KEY (service_id) 
);