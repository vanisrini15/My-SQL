-- Check if the database exists, create it only if it does not, and set it as the default
CREATE DATABASE IF NOT EXISTS training_db2; -- Ensures the database is created only if it doesn't already exist
USE training_db2; -- Sets the newly created or existing database as the default for subsequent commands

-- Create Students Table
CREATE TABLE Students2 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each student, automatically incremented
    FirstName VARCHAR(50), -- Stores the first name of the student, up to 50 characters
    LastName VARCHAR(50), -- Stores the last name of the student, up to 50 characters
    Age INT, -- Stores the age of the student as an integer
    Score DECIMAL(5,2), -- Stores the student's score with up to 5 digits, including 2 decimal places
    Country VARCHAR(50) -- Stores the country of the student, up to 50 characters
);

-- Create Courses Table
CREATE TABLE Courses2 (
    CourseID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each course, automatically incremented
    CourseName VARCHAR(100), -- Stores the name of the course, up to 100 characters
    Description TEXT, -- Stores a detailed description of the course
    Duration INT -- Stores the duration of the course in days as an integer
);

-- Create Enrollments Table
CREATE TABLE Enrollments2 (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each enrollment, automatically incremented
    StudentID INT, -- References the StudentID from the Students table, creating a one-to-many relationship
    CourseID INT, -- References the CourseID from the Courses table, creating a one-to-many relationship
    EnrollmentDate DATE, -- Stores the date the student enrolled in the course
    Status VARCHAR(20), -- Indicates the status of the enrollment (e.g., Pending, Completed)
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), -- Links each enrollment to one student
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) -- Links each enrollment to one course
);

-- Create Products Table
CREATE TABLE Products2 (
    ProductID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each product, automatically incremented
    ProductName VARCHAR(100), -- Stores the name of the product, up to 100 characters
    Category VARCHAR(50), -- Stores the category of the product (e.g., Electronics)
    Price DECIMAL(10,2), -- Stores the price of the product with up to 10 digits, including 2 decimal places
    Stock INT -- Stores the quantity of the product available in stock as an integer
);

-- Create Orders Table
CREATE TABLE Orders2 (
    OrderID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each order, automatically incremented
    CustomerName VARCHAR(100), -- Stores the name of the customer who placed the order
    OrderDate DATE, -- Stores the date the order was placed
    Status VARCHAR(20), -- Indicates the status of the order (e.g., Pending, Completed)
    ShippingDate DATE -- Stores the date the order is scheduled for shipping
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails2 (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each order detail, automatically incremented
    OrderID INT, -- References the OrderID from the Orders table, creating a one-to-many relationship
    ProductID INT, -- References the ProductID from the Products table, creating a one-to-many relationship
    Quantity INT, -- Stores the quantity of the product ordered
    TotalPrice DECIMAL(10,2), -- Stores the total price for the quantity ordered
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), -- Links each detail to one order
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) -- Links each detail to one product
);

-- Insert Sample Data into Students
INSERT INTO Students2 (FirstName, LastName, Age, Score, Country) VALUES
('Chris', 'Evans', 20, 78.50, 'UK'), -- Inserts a student named Chris Evans
('Charlotte', 'Smith', 22, 92.00, 'USA'), -- Inserts a student named Charlotte Smith
('Caleb', 'Brown', 23, 88.00, 'Canada'), -- Inserts a student named Caleb Brown
('Chantelle', 'White', 21, 85.00, 'Australia'); -- Inserts a student named Chantelle White

-- Insert Sample Data into Courses
INSERT INTO Courses2 (CourseName, Description, Duration) VALUES
('SQL Basics', 'Introduction to SQL', 5), -- Inserts a course on SQL Basics
('Advanced SQL', 'Deep dive into SQL concepts', 10); -- Inserts a course on Advanced SQL

-- Insert Sample Data into Enrollments
INSERT INTO Enrollments2 (StudentID, CourseID, EnrollmentDate, Status) VALUES
(1, 1, '2024-01-10', 'Completed'), -- Links Chris Evans to SQL Basics with a completed status
(2, 2, '2024-02-15', 'Pending'); -- Links Charlotte Smith to Advanced SQL with a pending status

-- Insert Sample Data into Products
INSERT INTO Products1 (ProductName, Category, Price, Stock) VALUES
('Keyboard', 'Electronics', 25.99, 150), -- Inserts a keyboard product
('Mouse', 'Electronics', 15.99, 200); -- Inserts a mouse product

-- Insert Sample Data into Orders
INSERT INTO Orders2 (CustomerName, OrderDate, Status, ShippingDate) VALUES
('Robert Luna', '2024-03-01', 'Pending', '2024-03-05'), -- Inserts an order by Robert Luna with pending status
('Alice Johnson', '2024-03-02', 'Completed', '2024-03-06'); -- Inserts an order by Alice Johnson with completed status

-- Insert Sample Data into OrderDetails
INSERT INTO OrderDetails2 (OrderID, ProductID, Quantity, TotalPrice) VALUES
(1, 1, 2, 51.98), -- Links Robert Luna's order to 2 keyboards with a total price
(2, 2, 1, 15.99); -- Links Alice Johnson's order to 1 mouse with a total price
select * from OrderDetails2;