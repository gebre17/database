CREATE TABLE Customer(
    c_id VARCHAR (20),
    first_name CHAR(30) NOT NULL,
    last_name CHAR(30) NOT NULL ,
    c_phone INT NOT NULL,
    c_email VARCHAR(40) NOT NULL UNIQUE,
    PRIMARY KEY (c_id));
    
    
CREATE TABLE Customer_address (
    c_id VARCHAR (20),
    city CHAR(30),
    street_no INT,
    FOREIGN KEY(c_id) REFERENCES Customer(c_id),
    PRIMARY KEY (c_id));
    
    
CREATE TABLE Branch(
    branch_id VARCHAR(20),
    branch_name CHARACTER(30) NOT NULL,
    PRIMARY KEY (branch_id));


CREATE TABLE Branch_address (
    branch_id VARCHAR(10),
    city CHAR(30),
    street_no INT,
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id),
    PRIMARY KEY (branch_id));


CREATE TABLE Employee(
    e_id VARCHAR (20),
    first_name CHAR(30) NOT NULL,
    last_name CHAR(30) NOT NULL,
    e_phone INT,
    e_email VARCHAR (20) NOT NULL UNIQUE,
    branch_id VARCHAR(20),
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id),
    PRIMARY KEY (e_id));

    
CREATE TABLE Employee_address (
    e_id VARCHAR (20),
    city CHAR(30) NOT NULL,
    street_no INT,
    FOREIGN KEY(e_id) REFERENCES Employee(e_id),
    PRIMARY KEY (e_id));

    
CREATE TABLE Account (
    account_no INT NOT NULL,
    account_type VARCHAR(10) NOT NULL,
    account_balance FLOAT,
    c_id VARCHAR (20),
    e_id VARCHAR (20),
    FOREIGN KEY(c_id) REFERENCES Customer(c_id),
    FOREIGN KEY(e_id) REFERENCES Employee(e_id),
    PRIMARY KEY (account_no));


CREATE TABLE Loan(
    loan_id VARCHAR(20),
    loan_type CHAR(10),
    loan_amount FLOAT,
    c_id VARCHAR (20),
    FOREIGN KEY(c_id) REFERENCES Customer(c_id),
    PRIMARY KEY (loan_id));
    

CREATE TABLE Manager(
    e_id VARCHAR(20),
    branch_id VARCHAR(10),
    FOREIGN KEY(e_id) REFERENCES Employee(e_id),
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id),
    PRIMARY KEY (branch_id,e_id ));


CREATE TABLE Credit_Card(
    credit_card_number VARCHAR(20),
    credit_card_pin VARCHAR(20) NOT NULL,
    cc_expiry_date DATE,
    account_no INT,
    FOREIGN KEY(account_no) REFERENCES Account(account_no),
    PRIMARY KEY (credit_card_number));


CREATE TABLE Transaction (
    transaction_id VARCHAR(20),
    transaction_type VARCHAR (10),
    amount FLOAT,
    account_no INT,
    transaction_date DATE,
    c_id VARCHAR (10) UNIQUE,
    FOREIGN KEY(c_id) REFERENCES Customer(c_id),
    PRIMARY KEY (transaction_id));


