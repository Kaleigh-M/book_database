-- Create Authors Table.
CREATE TABLE IF NOT EXISTS Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    BirthYear INT,
    Country VARCHAR(100)
);

-- Insert Authors Data
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
('Nancy Springer', 1948, 'United States'), -- Enola Holmes
('Maurice Leblanc', 1864, 'France'), -- Arsène Lupin
('Edgar Allan Poe', 1809, 'United States'),
('Jules Verne', 1828, 'France'),
('Frank Herbert', 1920, 'United States'), -- Dune
('Gaston Leroux', 1868, 'France'); -- Phantom of the Opera

-- Create Books Table
CREATE TABLE IF NOT EXISTS Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    PublishedYear INT,
    Genre VARCHAR(100),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Insert Books Data
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
