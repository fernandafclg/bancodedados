CREATE DATABASE registro_escola;
USE registro_escola;

CREATE TABLE estudantes (
    id_estudante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
	curso VARCHAR(50),
    nota DECIMAL(4, 2)
);

INSERT INTO estudantes (nome, idade, curso, nota) VALUES
("Maria Fernanda ", 13, "Japones", 8.0),
("Eduardo Santos ", 16, "Alemao", 8.0),
("Joana Santos", 14, "Frances", 9.0),
("Daniela Amaral", 17, "Ingles", 7.2),
("Maria Antonia", 12, "Ingles", 5.5),
("Jorge Pereira", 16, "Frances", 9.0),
("Marina Silva", 14, "Espanhol", 6.2),
("Olivia Pereira", 11, "Espanhol", 9.8);


SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE nota > 7.0;
SELECT * FROM estudantes WHERE nota < 7.0;

SET SQL_SAFE_UPDATES = 0;
UPDATE estudantes SET nota = 7.5 WHERE nome = "Marina Silva";
SELECT * FROM estudantes;