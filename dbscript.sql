-- Create Users table
CREATE TABLE Users (
    id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(50),
    email NVARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    id INT PRIMARY KEY IDENTITY,
    amount DECIMAL(18, 2),
    user_id INT,
    created_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Create Order_Chairs table
CREATE TABLE Order_Chairs (
    id INT PRIMARY KEY IDENTITY,
    order_id INT,
    chair_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

-- Create Order_Tables table
CREATE TABLE Order_Tables (
    id INT PRIMARY KEY IDENTITY,
    order_id INT,
    table_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

-- Create Order_Tops table
CREATE TABLE Order_Tops (
    id INT PRIMARY KEY IDENTITY,
    order_id INT,
    top_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);
