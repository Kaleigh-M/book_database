-- Create the Users table
CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(255) NOT NULL,
    UserEmail VARCHAR(255) NOT NULL
);

-- Insert example users into the Users table
INSERT INTO Users (UserName, UserEmail)
VALUES
('Alice Johnson', 'alice.johnson@example.com'),
('Bob Smith', 'bob.smith@example.com'),
('Charlie Brown', 'charlie.brown@example.com'),
('David Wilson', 'david.wilson@example.com'),
('Emma Davis', 'emma.davis@example.com');

-- Create the Loans table
CREATE TABLE IF NOT EXISTS Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    BookID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Insert example loans into the Loans table
INSERT INTO Loans (UserID, BookID, LoanDate, ReturnDate)
VALUES
(1, 1, '2024-01-10', '2024-01-17'),
(2, 3, '2024-01-11', '2024-01-18'),
(3, 5, '2024-01-12', '2024-01-19'),
(4, 7, '2024-01-13', '2024-01-20'),
(5, 9, '2024-01-14', '2024-01-21');
