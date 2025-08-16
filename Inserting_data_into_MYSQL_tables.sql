Insert Without Specifying Column Names (Full Row
Insert)
INSERT INTO users VALUES
(1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);

Insert by Specifying Column Names (Best Practice)
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Bob', 'bob@example.com', 'Male', '1990-11-23');

for multiple rows:The remaining columns like id (which is AUTO_INCREMENT ) and created_at
(which has a default) are automatically handled by MySQL.

INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Bob', 'bob@example.com', 'Male', '1990-11-23'),
('Charlie', 'charlie@example.com', 'Other', '1988-02-17');