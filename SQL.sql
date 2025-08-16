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
    AUTO_INCREMENT : Automatically generates a unique number for each row.
    PRIMARY KEY : Uniquely identifies each row in the table.
    NOT NULL : Ensures a column cannot have a NULL value.
    UNIQUE : Ensures all values in a column are different.
    DEFAULT : Sets a default value for a column if no value is provided. eg. created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP , is_active BOOLEAN DEFAULT TRUE


