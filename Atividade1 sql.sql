CREATE DATABASE rh_empresa;
USE rh_empresa;

CREATE TABLE Colaboradores (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(100),
    setor VARCHAR(100),
    salario DECIMAL(10, 2));
    
    INSERT INTO Colaboradores (Nome, Cargo, setor, salario) VALUES
("Rapahel Santos", "Gerente de projetos ", "TI", 8500.00, '2010-01-15'),
("Dayane Oliveira", 'Gerente de Projetos', "TI", 8500.00, '2018-01-20'),
("Eduardo Pereira", 'Analista de RH', "RH", 2800.00, '2011-03-11'),
("Clara Pereira", "Assistente Administrativo", "Administrativo", 2300.00, '2009-09-09'),
("Fernanda Santos", "Engenheira de Software", "TI", 9000.00, '2025-01-25');

SELECT * FROM Colaboradores;

SELECT * FROM Colaboradores WHERE salario > 2000.00;

UPDATE Colaboradores SET salario = 3000.00 WHERE ID = 3;
    