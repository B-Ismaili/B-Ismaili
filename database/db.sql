CREATE DATABASE book_catalog;

USE book_catalog;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'client') DEFAULT 'client'
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    deleted_at TIMESTAMP NULL DEFAULT NULL
);

CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    biography TEXT NOT NULL,
    deleted_at TIMESTAMP NULL DEFAULT NULL
);

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author_id INT NOT NULL,
    category_id INT NOT NULL,
    year_of_publication INT NOT NULL,
    number_of_pages INT NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    user_id INT NOT NULL,
    content TEXT NOT NULL,
    is_approved BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE notes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    user_id INT NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

DELETE FROM users WHERE username = 'test';

ALTER TABLE users ADD UNIQUE (username);

ALTER TABLE users ADD COLUMN role TINYINT(1) DEFAULT 0;
INSERT INTO users (username, password, role) VALUES ('ismaili', 'ismaili', 1);

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('user', 'admin') NOT NULL DEFAULT 'user'
);

ALTER TABLE authors ADD deleted_at DATETIME DEFAULT NULL;
ALTER TABLE categories ADD deleted_at DATETIME DEFAULT NULL;
ALTER TABLE books ADD deleted_at DATETIME DEFAULT NULL;

SELECT * FROM users WHERE username = 'admin';
UPDATE users SET password = '$2y$10$U9/c07OpJ1ASfWGps/AtcOG.SerU8.nuUxfoJzDon03Uq7bdOnKQW' WHERE username = 'Bunjamin';

