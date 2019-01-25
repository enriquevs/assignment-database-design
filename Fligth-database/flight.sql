CREATE DATABASE enriquevs;

USE enriquevs;


CREATE TABLE Flight (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AirplaneId INT,
    FlightNumId INT,
    PassengerId INT,
    FOREIGN KEY (AirplaneId) REFERENCES Airplane(Id),
    FOREIGN KEY	(FlightNumId) REFERENCES FlightNum(Id),
    FOREIGN KEY (PassengerId) REFERENCES Passenger(Id)
);

CREATE TABLE Airplane (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ModelId INT NOT NULL,
    NumberRegister INT(10) NOT NULL,
    Capacity INT(255) NOT NULL,
    Seats INT(255) NOT NULL
);

CREATE TABLE FlightNum (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FlightNum INT(10) NOT NULL,
    Depurate  VARCHAR(20) NOT NULL,
    Depurate_hr_day TIMESTAMP ('0000-00-00 00:00:00'),
    Arrival VARCHAR(20) NOT NULL,
    Arrival_hr_day TIMESTAMP ('0000-00-00 00:00:00'),
    FlightId INT,
    FOREIGN KEY (FlightId) REFERENCES Flight(Id)
);

CREATE TABLE Passenger (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(15) NOT NULL,
    Surname VARCHAR(20) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    FlightNumId INT(10) NOT NULL,
    SeatId INT NOT NULL,
    FOREIGN KEY (FlightNumId) REFERENCES FlightNum(Id),
    FOREIGN KEY (SeatId) REFERENCES Airplane(Seats)
);
