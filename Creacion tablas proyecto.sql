-- Paso 1: Crear la base de datos
CREATE DATABASE DeportesDB;

-- Paso 2: Usar la base de datos recién creada
USE DeportesDB;

-- Paso 3: Crear la tabla Atletas
CREATE TABLE Atletas (
    code INT PRIMARY KEY,
    gender VARCHAR(45),
    name VARCHAR(255),
    country VARCHAR(255),
    disciplines VARCHAR(255)
);

-- Paso 4: Crear la tabla Medalla
CREATE TABLE Medalla (
    code INT PRIMARY KEY,
    medal_type VARCHAR(45),
    FOREIGN KEY (code) REFERENCES Atletas(code)
);
