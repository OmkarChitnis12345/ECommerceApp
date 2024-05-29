# E-commerce Website

This project is an e-commerce website that displays various products, allows users to add them to a cart, and proceed to checkout, collecting basic user information. The following sections outline the key requirements and technologies used.

## Key Requirements

- Utilize the provided JSON for the product list.
- Present the products categorized by their respective categories.
- Include an "Add to Cart" button for each product.
- Create a checkout page that collects essential user details.
- Upon checkout, store user and product details according to the specified database structure and guidelines.
- Save order items into their respective category tables.

## Technologies

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: C#, .NET Framework 4.6
- **Database**: SQL Server

## Product Categories

- Chairs
- Tables
- Dining Tops

## Project Structure

### Frontend

#### Product List Page:

- Displays products categorized by their respective categories.
- Includes an "Add to Cart" button for each product.

#### Shopping Cart Page:

- Displays items added to the cart.
- Provides a button to proceed to checkout.

#### Checkout Page:

- Collects essential user details such as name and email.
- Submits the order to the backend for processing.

### Backend

- **Controller**: Handles requests from the frontend and interacts with the database.
- **Models**: Represents the data structure for products, users, and orders.
- **Database Interaction**: Uses ADO.NET to interact with the SQL Server database.

## Database Schema

- **Users**: (id, name, email)
- **Orders**: (id, amount, user_id, created_at)
- **Order_Chairs**: (id, order_id, chair_id)
- **Order_Tables**: (id, order_id, table_id)
- **Order_Tops**: (id, order_id, top_id)

## Installation and Setup

1. **Set up the database**:
    - Create a SQL Server database named `Ecom`.
    - Execute the SQL scripts in the `dbscript.sql`  to create the necessary tables.

2. **Update the connection string**:
    -  Update the connection string to match your SQL Server instance. Find all SqlConnection.

3. **Run the project**:
    - Open the solution in Visual Studio.
    - Build and run the project.
