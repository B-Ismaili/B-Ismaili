CREATE DATABASE expense_tracker;

USE expense_tracker;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    monthly_budget FLOAT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    amount FLOAT NOT NULL,
    description TEXT,
    expense_date DATE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO categories (user_id, name) VALUES
(1, 'Food'),
(1, 'Transport'),
(1, 'Shopping'),
(1, 'Bills'),
(1, 'Entertainment');

INSERT INTO categories (user_id, name) VALUES
(1, 'Groceries'),
(1, 'Utilities'),
(1, 'Travel');


ALTER TABLE expenses ADD recurring TINYINT DEFAULT 0;

ALTER TABLE users ADD monthly_budget DECIMAL(10,2) DEFAULT 0.00;

UPDATE users SET monthly_budget = 1000.00; -- Replace 1000.00 with your desired default value

CREATE TABLE recurring_expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    category VARCHAR(255) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO recurring_expenses (user_id, category, amount, description)
VALUES 
(1, 'Rent', 450.00, 'Monthly apartment rent'),
(1, 'Utilities', 100.00, 'Electricity and water bills'),
(1, 'Subscription', 20.00, 'Streaming service subscription');


ALTER TABLE categories
ADD spent_this_month DECIMAL(10, 2) DEFAULT 0,
ADD last_reset DATE NULL;

