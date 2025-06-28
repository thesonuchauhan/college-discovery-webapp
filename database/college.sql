CREATE DATABASE college_db;
USE college_db;

CREATE TABLE colleges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    rating FLOAT,
    courses VARCHAR(255),
    fees VARCHAR(100)
);

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Default admin credentials
INSERT INTO admin (username, password) VALUES ('admin', 'admin123');
