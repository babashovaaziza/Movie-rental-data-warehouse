





-- DIMENSION TABLES
CREATE TABLE DimCustomer (
    CustomerKey     SERIAL PRIMARY KEY,
    First_name VARCHAR(100),
    Last_name VARCHAR(100),
    Email VARCHAR(255),
    CONSTRAINT Uq_email UNIQUE (Email)
);
CREATE TABLE DimFilm (
    FilmKey          SERIAL PRIMARY KEY, 
    Title Varchar(200),
    Film_description Varchar(500),
    Category Varchar(100),
    Film_Length INT,
    Rating Varchar(20),
    Release_year INT, 
    Rrental_rate FLOAT

);

CREATE TABLE DimDate (
    DateKey INT PRIMARY KEY,              
    FullDate DATE,               
    Day INT,                        
    Month INT,                      
    Year INT,
    Quarter INT
);
-- FACT TABLE
CREATE TABLE Rental_Info (
    RentalKey    SERIAL PRIMARY KEY,
    RentalId     INT     NOT NULL,
    FilmKey     INT       NOT NULL,
    DateKey     INT       NOT null,
    CustomerKey INT       NOT NULL,
    Amount      DECIMAL(10,2),
    CONSTRAINT fk_Rental_Customer FOREIGN KEY (CustomerKey) REFERENCES DimCustomer (CustomerKey),
    CONSTRAINT fk_Rental_Film     FOREIGN KEY (FilmKey)     REFERENCES DimFilm     (FilmKey),
    CONSTRAINT fk_Rental_Date     FOREIGN KEY (DateKey)     REFERENCES DimDate     (DateKey)
);


