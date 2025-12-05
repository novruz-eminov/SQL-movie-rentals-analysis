CREATE TABLE Movies(
    movie_id INT,
    movie_title VARCHAR(50),
    genre VARCHAR(30),
    PRIMARY KEY(movie_id)
);

CREATE TABLE Customers(
    customer_id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email_address VARCHAR(50),
    PRIMARY KEY(customer_id)
);

CREATE TABLE Rentals(
    rental_id INT,
    movie_id INT DEFAULT NULL,
    customer_id INT DEFAULT NULL,
    rental_date DATE,

    PRIMARY KEY(rental_id),

    FOREIGN KEY(movie_id)
      REFERENCES Movies(movie_id)
      ON DELETE SET NULL,

    FOREIGN KEY(customer_id)
      REFERENCES Customers(customer_id)
      ON DELETE SET NULL
);

--Inserted data for the Movies Table
INSERT INTO Movies VALUES(1, 'Pulp Fiction', 'Crime Drama');
INSERT INTO Movies VALUES(2, 'Inception', 'Sci-Fi');
INSERT INTO Movies VALUES(3, 'Gladiator', 'Action Drama');
INSERT INTO Movies VALUES(4, 'Donnie Darko', 'Psychological Thriller');
INSERT INTO Movies VALUES(5, 'The Silence of the Lambs', 'Horror');
INSERT INTO Movies VALUES(6, 'Heathers', 'Comedy');
INSERT INTO Movies VALUES(7, 'Scarface', 'Crime Drama');
INSERT INTO Movies VALUES(8, 'Truman Show', 'Comdey Drama');
INSERT INTO Movies VALUES(9, 'Spirited Away', 'Fantasy');
INSERT INTO Movies VALUES(10, 'Kung Fu Hustle', 'Action Comedy');

--Inseted data for the Customers Table
INSERT INTO Customers VALUES(1, 'Eleanor', 'Rigby', 'eleanor.rigby@email.com');
INSERT INTO Customers VALUES(2, 'Arthur', 'Dent', 'arthur.dent@galaxy.net');
INSERT INTO Customers VALUES(3, 'Luna', 'Lovegood', 'l.lovegood@owlpost.co.uk');
INSERT INTO Customers VALUES(4, 'Hank', 'McCoy', 'beast@xavierinstitute.org');
INSERT INTO Customers VALUES(5, 'Maya', 'Patel', 'maya.patel@techsolutions.io');
INSERT INTO Customers VALUES(6, 'Derek', 'Morgan', 'd.morgan@bau.gov');
INSERT INTO Customers VALUES(7, 'Chidi', 'Anagonye', 'chidi.a@moralphilosophy.edu');
INSERT INTO Customers VALUES(8, 'Gwen', 'Stacy', 'gwen.stacy@oscorp.net');
INSERT INTO Customers VALUES(9, 'Kaito', 'Kuroba', 'kaitou.kid@heistnotice.jp');
INSERT INTO Customers VALUES(10, 'Zoe', 'Barnes', 'zoe.barnes@washingtonpost.com');

-- Inserted random data for the Rentals table
INSERT INTO Rentals VALUES(1, 8, 7, '2025-01-07');
INSERT INTO Rentals VALUES(2, 3, 2, '2025-01-14');
INSERT INTO Rentals VALUES(3, 5, 10, '2025-01-18');
INSERT INTO Rentals VALUES(4, 2, 4, '2025-01-22');
INSERT INTO Rentals VALUES(5, 10, 3, '2025-01-25');
INSERT INTO Rentals VALUES(6, 1, 8, '2025-01-30');
INSERT INTO Rentals VALUES(7, 6, 5, '2025-02-04');
INSERT INTO Rentals VALUES(8, 7, 1, '2025-02-09');
INSERT INTO Rentals VALUES(9, 4, 9, '2025-02-15');
INSERT INTO Rentals VALUES(10, 9, 6, '2025-02-20');
INSERT INTO Rentals VALUES(11, 3, 4, '2025-02-27');
INSERT INTO Rentals VALUES(12, 10, 2, '2025-03-05');
INSERT INTO Rentals VALUES(13, 2, 7, '2025-03-11');
INSERT INTO Rentals VALUES(14, 8, 10, '2025-03-18');
INSERT INTO Rentals VALUES(15, 5, 1, '2025-03-24');
INSERT INTO Rentals VALUES(16, 6, 3, '2025-03-29');
INSERT INTO Rentals VALUES(17, 1, 5, '2025-04-03');
INSERT INTO Rentals VALUES(18, 4, 8, '2025-04-10');
INSERT INTO Rentals VALUES(19, 9, 4, '2025-04-16');
INSERT INTO Rentals VALUES(20, 7, 6, '2025-04-22');
INSERT INTO Rentals VALUES(21, 3, 9, '2025-04-28');
INSERT INTO Rentals VALUES(22, 2, 1, '2025-05-05');
INSERT INTO Rentals VALUES(23, 10, 7, '2025-05-12');
INSERT INTO Rentals VALUES(24, 8, 3, '2025-05-19');
INSERT INTO Rentals VALUES(25, 5, 5, '2025-05-25');
