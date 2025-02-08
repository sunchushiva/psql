CREATE TABLE transactions (
    tid SERIAL PRIMARY KEY,       
    cname VARCHAR(255),              
    email TEXT,                               
    amount NUMERIC(10,2),                     
    date TIMESTAMP,              
    status VARCHAR(20),                       
    category TEXT,                            
    country VARCHAR(100),                    
    remarks TEXT                              
);

INSERT INTO transactions 
    (cname, email, amount, date, status, category, country, remarks)
VALUES
    ('John Doe', 'john.doe@example.com', 150.75, '2024-02-01 10:15:30', 'Completed', 'Electronics', 'USA', 'Fast delivery!'),
    ('Alice Smith', 'alice.smith@xyz', 250.00, '2024-01-20 14:30:00', 'Pending', 'fashion', 'UK', NULL),
    (NULL, 'bob.jones@example.com', -50.25, '2024-02-10 09:45:20', 'Failed', 'Groceries', 'Canada', 'Refund requested'),
    ('Emily Davis', 'emily.d@example.com', NULL, '2024-01-25 16:00:45', 'Completed', 'Home & Kitchen', 'India', 'Good service!'),
    ('john doe', 'john.doe@example.com', 75.50, '2024-01-22 11:05:10', 'Completed', 'Electronics', 'USA', NULL),
    ('Mark Lee', 'mark.lee@random.com', 499.99, '2024-02-05 18:20:55', 'Completed', 'electronics', 'Germany', 'Happy customer'),
    ('Sophia Brown', NULL, 120.00, '2024-02-07 07:30:15', 'Pending', 'Fashion', 'France', 'Urgent delivery'),
    ('Michael Johnson', 'michael@example.com', 75.00, '2024-02-03 20:10:05', 'Failed', 'Home & Kitchen', 'Italy', 'Payment issue'),
    ('Emma Wilson', 'emma.wilson@site.net', 299.99, '2024-02-06 12:45:50', 'Completed', 'groceries', 'India', 'Delivered late!'),
    ('Lucas Miller', 'lucas.m@example.com', 89.99, '2024-02-09 23:59:59', 'Completed', 'Groceries', 'Australia', NULL),
    ('Olivia Clark', 'olivia.clark@webmail.com', 125.00, '2024-01-29 08:15:30', 'Pending', 'FASHION', 'Spain', 'Returning product'),
    ('Daniel White', 'daniel.white@company.com', 349.50, '2024-01-27 15:45:00', 'Completed', 'Electronics', 'USA', 'Satisfied with service'),
    ('Liam Harris', 'liam.h@corp.com', -10.00, '2024-02-04 22:10:10', 'Failed', 'Home & Kitchen', 'Japan', 'Disputed charge'),
    ('Emma Wilson', 'emma.dup@example.net', 200.00, '2024-02-08 13:20:50', 'Completed', 'groceries', 'India', 'Repeat order'),
    ('Noah Martinez', 'noah.martinez@domain.net', NULL, '2024-01-23 17:30:00', 'Pending', 'Groceries', 'Canada', 'Need refund'),
    ('Sophia Brown', 'sophia@outlook.com', 500.00, '2024-02-02 09:10:00', 'Completed', 'fashion', 'France', 'Luxury brand purchase'),
    ('James Anderson', 'james.anderson@mail.com', 275.25, '2024-02-11 10:45:30', 'Pending', 'Electronics', 'Germany', 'Checking stock'),
    ('Isabella Moore', 'isabella.moore@business.org', 135.75, '2024-02-12 14:55:50', 'Completed', 'Fashion', 'Australia', 'Fast shipping needed'),
    ('William Scott', 'william.s@service.com', 89.50, '2024-01-31 20:05:00', 'Failed', 'Home & Kitchen', 'India', 'Item broken'),
    ('Emma Wilson', 'emma.wilson@site.net', 199.99, '2024-02-13 08:25:40', 'Completed', 'GROCERIES', 'India', 'Different delivery address');

