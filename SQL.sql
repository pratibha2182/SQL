What is a Database?
database is an organisation collection of structured information or data, typically store electronically in a computer.
A database is a container that stores related data in an organized way. In MySQL, a database holds one or more tables.
Think of it like:
Folder analogy:
A database is like a folder.
Each table is a file inside that folder.
The rows in the table are like the content inside each file.
Excel analogy:
A database is like an Excel workbook.
Each table is a separate sheet inside that workbook.
Each row in the table is like a row in Excel.


What is a Database Management System (DBMS)?
A Database Management System (DBMS) is software that interacts with end users, applications, and the database itself to capture and analyze data. It allows for the creation, retrieval, updating, and management of data in databases. If you know one DBMS, you can easily transition to another, as they share similar concepts and functionalities.


Data Types Explained
    INT : Integer type, used for whole numbers.
    VARCHAR(100) : Variable-length string, up to 100 characters.
    ENUM : A string object with a value chosen from a list of permitted values. eg. gender ENUM('Male', 'Female', 'Other')
    DATE : Stores date values. eg date_of_birth DATE
    TIMESTAMP : Stores date and time, automatically set to the current timestamp when a row is created.
    BOOLEAN : Stores TRUE or FALSE values, often used for flags like is_active .
    DECIMAL(10, 2) : Stores exact numeric data values, useful for financial data. The first number is the total number of digits, and the second is the number of digits after the decimal point.


Constraints Explained

1) AUTO_INCREMENT : Automatically generates a unique number for each row.
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100)
);


2) PRIMARY KEY : Uniquely identifies each row in the table.
CREATE TABLE users (
id INT PRIMARY KEY,
 name VARCHAR(100)
);

Add later with ALTER TABLE :
ALTER TABLE users
ADD PRIMARY KEY (id);


3) NOT NULL : Ensures a column cannot have a NULL value.
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
    );

Change an existing column to NOT NULL:
ALTER TABLE users
MODIFY COLUMN name VARCHAR(100) NOT NULL;

Make a column nullable again:
ALTER TABLE users
MODIFY COLUMN name VARCHAR(100) NULL;


4) UNIQUE : Ensures all values in a column are different.
CREATE TABLE users (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
    );

Add UNIQUE using ALTER TABLE
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);

    
5) DEFAULT : Sets a default value for a column if no value is provided. eg. created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP , is_active BOOLEAN DEFAULT TRUE
CREATE TABLE users (
id INT PRIMARY KEY,
 is_active BOOLEAN DEFAULT TRUE
);

Add DEFAULT using ALTER TABLE :
ALTER TABLE users
ALTER COLUMN is_active SET DEFAULT TRUE;


6)CHECK : Ensures that values in a column satisfy a specific condition.
Allow only dates of birth after Jan 1, 2000
ALTER TABLE users
ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');

/*