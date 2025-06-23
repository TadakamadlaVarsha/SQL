CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    AuthorName VARCHAR(100) NOT NULL
);
CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY AUTO_INCREMENT,
    PublisherName VARCHAR(100) NOT NULL
);
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    PublisherID INT,
    ISBN VARCHAR(20) UNIQUE,
    Genre VARCHAR(50),
    YearPublished INT,
    TotalCopies INT DEFAULT 0,
    AvailableCopies INT DEFAULT 0,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address TEXT,
    JoinDate DATE DEFAULT CURRENT_DATE
);

