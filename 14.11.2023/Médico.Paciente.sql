CREATE DATABASE ClinicaRomullus;
GO
USE ClinicaRomullus;
GO

/LÓGICO 02/

CREATE TABLE Medico (
    Id INT PRIMARY KEY IDENTITY(1,1),
    CRM NCHAR(8),
    Nome VARCHAR(70)
);

INSERT INTO Medico(CRM, Nome)VALUES('DF224455', 'Joaquino de Burquerque');
INSERT INTO Medico(CRM, Nome)VALUES('DF112255', 'Rodrigo de Deus');
INSERT INTO Medico(CRM, Nome)VALUES('DF334455', 'Edir Mais Cedo');
INSERT INTO Medico(CRM, Nome)VALUES('GO114455', 'Holdai Luz');
INSERT INTO Medico(CRM, Nome)VALUES('GO334455', 'Yuri Luz');
INSERT INTO Medico(CRM, Nome)VALUES('GO324455','Luiz Filho');

SELECT * FROM Medico;

ALTER TABLE Medico
ADD		CONSTRAINT UQ_CRM UNIQUE (CRM);

/* Clinica - Modelo Logico: */

CREATE TABLE Paciente (
    Id INT PRIMARY KEY IDENTITY(1,1),
    DataNascimento DATE,
    Nome VARCHAR(70),
    CPF NCHAR(11)
);
