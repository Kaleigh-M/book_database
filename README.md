# Book Database

A SQL-based database for managing books, users, and book loans. This project includes SQL scripts to set up the database with real data.

## Features

- **Books Table:** Tracks book details such as title, author, publication date, ISBN, genre, and page count.
- **Users Table:** Stores user information including username, email, and hashed password.
- **Book Loans Table:** Records which user has borrowed which book, including loan and return dates.

## Setup

### Windows

1. **Clone the Repository:**
   Open Command Prompt and run:
   ```bash
   git clone https://github.com/Kaleigh-M/book_database.git

2. **Navigate to the Project Directory:**
   ```bash
   cd book_database

3. **Import the SQL Script:**
    Using MySQL Command-Line Tool, Open Command Prompt and run:
   ```bash
   mysql -u your_username -p < database.sql

Replace your_username with your MySQL username. Enter your password when prompted.

   **Using MySQL Workbench:**

1. Open MySQL Workbench.
2. Connect to your MySQL server.
3. Go to File > Open SQL Script.
4. Select database.sql and click Open.
5. Click the lightning bolt icon to execute the script.


### Linux

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/book_database.git

2. **Navigate to the Project Directory:**
   ```bash
   cd book_database

3. **Import the SQL Script:**
Open a terminal and run:
   ```bash
   mysql -u your_username -p < database.sql
Replace your_username with your MySQL username. Enter your password when prompted.


### Requirements

    - MySQL Server (or compatible SQL database)
    - Basic SQL knowledge


### Notes:
- Replace `your-username` with your actual GitHub username.
- Make sure to have MySQL installed and properly configured on both Windows and Linux systems.
- For detailed instructions on using MySQL Workbench, refer to the [official MySQL Workbench documentation](https://dev.mysql.com/doc/workbench/en/).
