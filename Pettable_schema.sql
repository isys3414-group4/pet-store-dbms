CREATE TABLE PET(
    pet_ID      INTEGER UNIQUE not null ,
    gender      VARCHAR(10) not null ,
    species     VARCHAR(10) not null ,
    name        VARCHAR(30) not null ,
    customer_id INTEGER not null ,
    CONSTRAINT pk_pet_ID PRIMARY KEY(pet_ID),
    FOREIGN KEY(customer_id) references Customer(customer_id)
);



