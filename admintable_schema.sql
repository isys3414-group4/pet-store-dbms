CREATE TABLE ADMINS(
    staff_id     INTEGER UNIQUE not null ,
    name         VARCHAR(30) not null ,
    gender       VARCHAR(10) not null ,
    phone_Number VARCHAR(20) not null ,
    email        VARCHAR(50),
    Salary       INTEGER,
    CONSTRAINT pk_staff_id PRIMARY KEY (staff_id)
);
