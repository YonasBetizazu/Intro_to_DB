<<<<<<< HEAD
CREATE DATABASE IF NOT alx_book_store;
=======
CREATE DATABASE IF NOT EXISTS alx_book_store;
>>>>>>> 6d9042d87bd85c250c9757a8070561fa93b7b8b0
USE alx_book_store;

CREATE TABLE Authors (
    author_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Books (
    book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
    price DOUBLE
    publication_date DATE
);

CREATE TABLE Customers (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

CREATE TABLE Orders (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
    orderdetailid INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Corrected from 'oorderdetailid'
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL, -- Added quantity field
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
