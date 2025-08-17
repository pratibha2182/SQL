Filtering Rows with WHERE

-- Equal to
SELECT * FROM users WHERE gender = 'Male';

-- Not Equal to 
SELECT * FROM users WHERE gender != 'Female';
-- or
SELECT * FROM users WHERE gender <> 'Female';

-- Greater than / Less than
SELECT * FROM users WHERE date_of_birth < '1995-01-01';
SELECT * FROM users WHERE id > 10;

-- Greater than or equal / Less than or equal
SELECT * FROM users WHERE id >= 5;
SELECT * FROM users WHERE id <= 20;

-- is null
SELECT * FROM users WHERE date_of_birth IS NULL;

-- is not null
SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- Between
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';

-- in
SELECT * FROM users WHERE gender IN ('Male', 'Other');

-- like
SELECT * FROM users WHERE name LIKE 'A%'; -- Starts with A
SELECT * FROM users WHERE name LIKE '%a'; -- Ends with a
SELECT * FROM users WHERE name LIKE '%li%'; -- Contains 'li'

-- and / or
SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';

-- order  by 
SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;

-- limit
SELECT * FROM users LIMIT 5; -- Top 5 rows
SELECT * FROM users LIMIT 10 OFFSET 5; -- Skip first 5 rows, then get next 10
SELECT * FROM users LIMIT 5, 10; -- Get 10 rows starting from the 6th row (Same asabove)
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;
