-- Create the database
CREATE DATABASE IF NOT EXISTS example_database;

-- Use the database
USE example_database;

-- Create the table
CREATE TABLE IF NOT EXISTS todo_list (
    id INT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255) NOT NULL
);

-- Insert sample data
INSERT INTO todo_list (content) VALUES
('My first important item'),
('My second important item'),
('My third important item'),
('and this one more thing');
