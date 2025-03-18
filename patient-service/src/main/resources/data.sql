-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    phone            VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
);

-- Insert well-known UUIDs for specific patients

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174000',
       'John Doe',
       'john.doe@example.com',
       '123 Main St, Springfield',
	   '1234567890',
       '1985-06-15',
       '2024-01-10'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174000');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174001',
       'Jane Smith',
       'jane.smith@example.com',
       '456 Elm St, Shelbyville',
	   '1134567890',
       '1990-09-23',
       '2023-12-01'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174001');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174002',
       'Alice Johnson',
       'alice.johnson@example.com',
       '789 Oak St, Capital City',
	   '2234567890',
       '1978-03-12',
       '2022-06-20'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174002');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174003',
       'Bob Brown',
       'bob.brown@example.com',
       '321 Pine St, Springfield',
	      '1334567890',
       '1982-11-30',
       '2023-05-14'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174003');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174004',
       'Emily Davis',
       'emily.davis@example.com',
       '654 Maple St, Shelbyville',
	      '3234567890',
       '1995-02-05',
       '2024-03-01'
WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174004');

-- Insert well-known UUIDs for specific patients
INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174005',
       'Michael Green',
       'michael.green@example.com',
       '987 Cedar St, Springfield',
	      '1434567890',
       '1988-07-25',
       '2024-02-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174005');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174006',
       'Sarah Taylor',
       'sarah.taylor@example.com',
       '123 Birch St, Shelbyville',
	      '4234567890',
       '1992-04-18',
       '2023-08-25'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174006');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174007',
       'David Wilson',
       'david.wilson@example.com',
       '456 Ash St, Capital City',
	      '1534567890',
       '1975-01-11',
       '2022-10-10'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174007');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174008',
       'Laura White',
       'laura.white@example.com',
       '789 Palm St, Springfield',
	      '5234567890',
       '1989-09-02',
       '2024-04-20'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174008');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174009',
       'James Harris',
       'james.harris@example.com',
       '321 Cherry St, Shelbyville',
	      '6234567890',
       '1993-11-15',
       '2023-06-30'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174009');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174010',
       'Emma Moore',
       'emma.moore@example.com',
       '654 Spruce St, Capital City',
	      '1734567890',
       '1980-08-09',
       '2023-01-22'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174010');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174011',
       'Ethan Martinez',
       'ethan.martinez@example.com',
       '987 Redwood St, Springfield',
	      '7234567890',
       '1984-05-03',
       '2024-05-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174011');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174012',
       'Sophia Clark',
       'sophia.clark@example.com',
       '123 Hickory St, Shelbyville',
	      '8234567890',
       '1991-12-25',
       '2022-11-11'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174012');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174013',
       'Daniel Lewis',
       'daniel.lewis@example.com',
       '456 Cypress St, Capital City',
	      '1834567890',
       '1976-06-08',
       '2023-09-19'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174013');

INSERT INTO patient (id, name, email, address,phone, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174014',
       'Isabella Walker',
       'isabella.walker@example.com',
       '789 Willow St, Springfield',
	      '9234567890',
       '1987-10-17',
       '2024-03-29'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174014');