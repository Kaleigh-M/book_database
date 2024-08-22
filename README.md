# Book Database

This project contains a SQL script to populate a database with a collection of classic books and their authors that I have personally read. 
The data includes renowned authors like Arthur Conan Doyle, Jane Austen, and Jules Verne, along with their most notable works.

The project also provides examples of users and book loans to demonstrate how the database can be used to track borrowing activity.

## Project Overview

This SQL script creates and populates tables for authors, books, users, and book loans. It’s a great starting point for anyone looking to create a personal library database or explore SQL-based data management.

## Database Structure

The database consists of the following tables:

- Authors: Contains information about each author, including their name, birth year, and country of origin.
- Books: Includes details about each book, such as its title, publication year, genre, and the corresponding author.
- Users: Represents individuals who might borrow books from the library, with details like name and email.
- Book Loans: Tracks the borrowing history, including which user borrowed which book and when.
    
## Features

- **Books Table:** Tracks book details such as title, author, publication date, ISBN, genre, and page count.
- **Users Table:** Stores user information including username, email, and hashed password.
- **Book Loans Table:** Records which user has borrowed which book, including loan and return dates.

## Table: Authors

1. This table contains a list of classic authors, their birth years, and their countries of origin:
   ```bash
   CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    BirthYear INT,
    Country VARCHAR(50));
   
    INSERT INTO Authors (Name, BirthYear, Country)
    VALUES 
    ('Arthur Conan Doyle', 1859, 'United Kingdom'),
    ('Jack London', 1876, 'United States'),
    ('Herman Melville', 1819, 'United States'),
    ('Jane Austen', 1775, 'United Kingdom'),
    ('Lewis Carroll', 1832, 'United Kingdom'),
    ('Agatha Christie', 1890, 'United Kingdom'),
    ('H. G. Wells', 1866, 'United Kingdom'),
    ('Louisa May Alcott', 1832, 'United States'),
    ('Charles Dickens', 1812, 'United Kingdom'),
    ('Robert Louis Stevenson', 1850, 'United Kingdom'),
    ('Shel Silverstein', 1930, 'United States'),
    ('Anna Sewell', 1820, 'United Kingdom'),
    ('Frances Hodgson Burnett', 1849, 'United Kingdom'),
    ('Lucy Maud Montgomery', 1874, 'Canada'),
    ('Charlotte Brontë', 1816, 'United Kingdom'),
    ('Emily Brontë', 1818, 'United Kingdom'),
    ('George Eliot', 1819, 'United Kingdom'),
    ('Miguel de Cervantes', 1547, 'Spain'),
    ('John Steinbeck', 1902, 'United States'),
    ('F. Scott Fitzgerald', 1896, 'United States'),
    ('Victor Hugo', 1802, 'France'),
    ('Nancy Springer', 1948, 'United States'),
    ('Maurice Leblanc', 1864, 'France'),
    ('Edgar Allan Poe', 1809, 'United States'),
    ('Jules Verne', 1828, 'France'),
    ('Frank Herbert', 1920, 'United States'),
    ('Gaston Leroux', 1868, 'France');

## Table: Books

1. This table lists the titles of the books, the year they were published, the genre, and a reference to the corresponding author:
   ```bash
   CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200),
    AuthorID INT,
    PublishedYear INT,
    Genre VARCHAR(50),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID) );

    INSERT INTO Books (Title, AuthorID, PublishedYear, Genre)
    VALUES 
    ('Sherlock Holmes (Complete Series)', 1, 1887, 'Mystery'),
    ('The Call of the Wild', 2, 1903, 'Adventure'),
    ('White Fang', 2, 1906, 'Adventure'),
    ('The Sea Dog', 2, NULL, 'Adventure'),
    ('Moby Dick', 3, 1851, 'Adventure'),
    ('Boxcar Children Mysteries (12 books)', NULL, NULL, 'Children\'s Mystery'),
    ('Pride and Prejudice', 4, 1813, 'Romance'),
    ('Alice’s Adventures in Wonderland', 5, 1865, 'Fantasy'),
    ('Alice Through the Looking Glass', 5, 1871, 'Fantasy'),
    ('Complete Short Story Collection by Lewis Carroll', 5, NULL, 'Fantasy'),
    ('The Secret Adversary', 6, 1922, 'Mystery'),
    ('The Time Machine', 7, 1895, 'Science Fiction'),
    ('Little Women', 8, 1868, 'Fiction'),
    ('Great Expectations', 9, 1861, 'Fiction'),
    ('Treasure Island', 10, 1883, 'Adventure'),
    ('Poems by Shel Silverstein', 11, NULL, 'Poetry'),
    ('Black Beauty', 12, 1877, 'Children\'s Fiction'),
    ('The Secret Garden', 13, 1911, 'Children\'s Fiction'),
    ('Anne of Green Gables', 14, 1908, 'Children\'s Fiction'),
    ('Partners in Crime', 6, 1929, 'Mystery'),
    ('Persuasion', 4, 1818, 'Romance'),
    ('Jane Eyre', 15, 1847, 'Romance'),
    ('Wuthering Heights', 16, 1847, 'Romance'),
    ('Middlemarch', 17, 1871, 'Fiction'),
    ('Don Quixote', 18, 1605, 'Adventure'),
    ('Of Mice and Men', 19, 1937, 'Fiction'),
    ('Kidnapped', 10, 1886, 'Adventure'),
    ('The Great Gatsby', 20, 1925, 'Fiction'),
    ('Les Misérables', 21, 1862, 'Historical Fiction'),
    ('Enola Holmes (Complete Series)', 22, 2006, 'Mystery'),
    ('Arsène Lupin (Complete Series)', 23, 1907, 'Mystery'),
    ('C. Auguste Dupin Short Stories', 24, 1841, 'Mystery'),
    ('Twenty Thousand Leagues Under the Sea', 25, 1870, 'Science Fiction'),
    ('Journey to the Center of the Earth', 25, 1864, 'Science Fiction'),
    ('Dune', 26, 1965, 'Science Fiction'),
    ('The Phantom of the Opera', 27, 1910, 'Gothic Fiction');

## Table: Users

1. This table includes example data for users who might borrow books from the database:
   ```bash
   CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100)
    );
    
    INSERT INTO Users (Name, Email)
    VALUES
    ('John Doe', 'johndoe@example.com'),
    ('Jane Smith', 'janesmith@example.com'),
    ('Alice Johnson', 'alicejohnson@example.com');

## Table: Book Loans

1. This table tracks which user borrowed which book and when. The LoanDate and ReturnDate fields allow for tracking the borrowing period:
   ```bash
   CREATE TABLE BookLoans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    UserID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
    );
    
    INSERT INTO BookLoans (BookID, UserID, LoanDate, ReturnDate)
    VALUES
    (1, 1, '2024-01-10', '2024-01-20'),
    (3, 2, '2024-02-01', '2024-02-15'),
    (5, 3, '2024-03-05', NULL); -- Currently borrowed


### Setup

## Windows

1. **Clone the Repository:**
   Open Command Prompt and run:
   ```bash
   git clone https://github.com/Kaleigh-M/book_database.git

2. **Navigate to the Project Directory:**
   In Command Prompt, run:
   ```bash
   cd book_database

4. **Import the SQL Script:**
    Using MySQL Command-Line Tool, Open Command Prompt and run:
   ```bash
   mysql -u your_username -p < database.sql

Replace your_username with your MySQL username and Enter your password when prompted.

   **Using MySQL Workbench:**

1. Open MySQL Workbench.
2. Connect to your MySQL server.
3. Go to File > Open SQL Script.
4. Select database.sql and click Open.
5. Click the lightning bolt icon to execute the script.


## Linux

1. **Clone the Repository:**
   Open a terminal and run:
   ```bash
   git clone https://github.com/your-username/book_database.git

3. **Navigate to the Project Directory:**
   run:
   ```bash
   cd book_database

5. **Import the SQL Script:**
In the terminal, run:
   ```bash
   mysql -u your_username -p < database.sql
Replace your_username with your MySQL username. Enter your password when prompted.

Replace your_username with your MySQL username and Enter your password when prompted.

### Requirements

    - MySQL Server (or compatible SQL database)
    - Basic SQL knowledge


### Notes:
- Replace `your-username` with your MySQL username in the commands.
- Make sure to have MySQL installed and properly configured on both Windows and Linux systems.
- For detailed instructions on using MySQL Workbench, refer to the [official MySQL Workbench documentation](https://dev.mysql.com/doc/workbench/en/).
