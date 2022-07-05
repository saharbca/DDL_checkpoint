-- Create Customer table
Create table Customer (
	 Customer_id VARCHAR(20) CONSTRAINT pk_constr PRIMARY KEY,
	 Customer_Name VARCHAR(20) CONSTRAINT nn_constr NOT NULL,
	 Customer_Tel NUMBER 
)

-- Create Product table
Create table Product (
	 Product_id  VARCHAR(20) CONSTRAINT pk_constr PRIMARY KEY ,
	 Product_Name VARCHAR(20) CONSTRAINT nn_constr NOT NULL,
	 Price NUMBER CONSTRAINT check_constr CHECK(Price>0)
)

-- Create Orders table
Create table Orders (
	 Customer_id VARCHAR(20) ,
     Product_id  VARCHAR(20) ,
     quality NUMBER,
	 total_amount NUMBER,
     CONSTRAINT fk_constr_customer  FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
     CONSTRAINT fk_constr_product  FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
)

--Add a column Category (VARCHAR2(20)) to the PRODUCT table
ALTER TABLE Product ADD Category VARCHAR2(20),

--Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value
Alter TABLE Orders ADD OrderDate DATE Default SYSDATE