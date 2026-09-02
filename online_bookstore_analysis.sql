-- CREATE Tables 

DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
   Book_ID SERIAL PRIMARY KEY ,
   Tittle VARCHAR(100),
   Author VARCHAR(100),
   Genre VARCHAR(50),
   Published_Year INT,
   Price NUMERIC(10, 2),
   Stock INT
);


DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
	Name VARCHAR(100),
	Email VARCHAR(100),
	Phone VARCHAR(15),
	City VARCHAR(50),
	Country VARCHAR(150)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE Orders(
    Order_ID SERIAL PRIMARY KEY,
	Customer_ID INT REFERENCES Customers(Customer_ID),
	Book_ID INT REFERENCES Books(Book_ID),
	Order_Date DATE,
	Quantity INT,
	Total_Amount NUMERIC(10,2)
);


SELECT * FROM Books;
SELECT * FROM Orders;
SELECT * FROM Customers;

-- Create Database 
CREATE DATABASE Onlinebookstores;




SELECT * FROM  Books;


SELECT * FROM Customers;

SELECT * FROM Orders;


-- NOW START MY QUESTION --


-- 1) Retrieve all books in the "Fiction" genre:

SELECT * FROM Books 
WHERE genre='Fiction';

-- 2) Find books published after the year 1950 :
SELECT * FROM Books
WHERE published_Year > 1950;

-- 3) List all customers from the Canada:
SELECT * FROM Customers 
WHERE country = 'Canada';

-- 4) Show orders placed in November 2023:

SELECT * FROM Orders
WHERE order_date BETWEEN  '2023-11-01' AND '2023-11-30';

-- 5) Retrieve the total stock of books available:
SELECT SUM(stock) AS Total_Stack 
FROM Books;

-- 6) Find the details of the most expensive book:
SELECT * FROM Books
ORDER BY Price DESC
LIMIT 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM Orders
WHERE quantity >1;

-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM Orders
WHERE total_amount > 20;


-- 9) List all genres available in the Books table:
SELECT DISTINCT genre FROM Books;


-- 10) Find the book with the lowest stock:
SELECT * FROM Books
ORDER BY stock
LIMIT 1;

-- 11) Calculate the total revenue generated from all orders:
SELECT SUM(total_amount)
AS Revenue
FROM Orders;

-- 1) Retrieve the total number of books sold for each genre:
SELECT * FROM Orders;

SELECT b.genre, SUM(o.quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY b.genre;


-- 2) Find the average price of books in the "Fantasy" genre:
SELECT AVG(price) AS Average_Price
FROM Books
WHERE Genre = 'Fantasy';


-- 3) List customers who have placed at least 2 orders:
SELECT O.Customer_id , C.name, COUNT(Order_id) AS ORDER_COUNT
FROM Orders O
JOIN Customers C ON O.Customer_id = C.Customer_id
GROUP BY O.Customer_id, C.name
HAVING COUNT(Order_id) >=2;



-- 4) Find the most frequently ordered book:
SELECT Book_ID, COUNT(*) AS Order_Count
FROM Orders
GROUP BY Book_ID
ORDER BY Order_Count DESC
LIMIT 1;



-- 5) Show the top 3 most expensive books of 'Fantasy' Genre:
SELECT * FROM Books
WHERE genre = 'Fantasy'
ORDER BY price DESC LIMIT 3;



-- 6) Retrieve the total quantity of books sold by each author:
SELECT b.Author, SUM(o.Quantity) AS Total_Quantity_Sold
FROM Books b
JOIN Orders o
ON b.Book_ID = o.Book_ID
GROUP BY b.Author;


-- 7) List the cities where customers who spent over $30 are located:

SELECT c.City, SUM(o.Total_Amount) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.Customer_ID = o.Customer_ID
GROUP BY c.City
HAVING SUM(o.Total_Amount) > 30;


-- 8) Find the customer who spent the most on orders:

SELECT c.Name, SUM(o.Total_Amount) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.Customer_ID = o.Customer_ID
GROUP BY c.Name
ORDER BY Total_Spent DESC
LIMIT 1;




-- 9) Calculate the stock remaining after fulfilling ALl orders:

SELECT b.Book_ID, b.Tittle,b.Stock , COALESCE(SUM(o.Quantity), 0) AS Order_quantity,
     b.stock- COALESCE(SUM(o.Quantity), 0) AS Remaining_Quantity
FROM Books b
LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID ORDER BY b.Book_ID;





















