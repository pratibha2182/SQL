Drop the Database
DROP DATABASE startersql;

Drop the table
DROP table users;

The DELETE statement removes rows from a table.


To delete  one single row
DELETE FROM users WHERE id = 3;

To delete multiple row
DELETE FROM users WHERE gender = 'Other';

To delete all inseted but without table structure
DELETE FROM users;


To delete entire table
DROP TABLE users;
