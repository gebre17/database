

/*Data manipulation queries*/
    
/*Viewing all Customers:*/

SELECT * FROM Customer;


/*Altering our Customer table by adding a "Gender" attribute:*/

ALTER TABLE Customer
ADD Gender char(1);

/*Altering our Customer table by deleting the "Gender" attribute:*/

ALTER TABLE Customer
DROP COLUMN Gender;


/*Inserting values to "Employee" table:*/
INSERT INTO Employee(e_id, first_name, last_name, e_phone, e_email, branch_id)
VALUES ("444", "Jimmy", "Smith", "+1111111111", "jimm11@gmail.com", "11b")

/*Deleting values from "Employee" table where the c_id is "111":*/
DELETE FROM table
WHERE c_id = "444";

/*Editing values of "Employee" table where the c_id is "444" (changing the "first_name" and "last_name"):*/
UPDATE Employee
SET first_name = 'John', last_name= 'Collins'
WHERE e_id = "444";

