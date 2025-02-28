CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
("Programação", "Cursos de desenvolvimento de software"),
("Design de Produto", "Cursos de design gráfico e UX/UI"),
("Idiomas", "Cursos de línguas estrangeiras"),
("Analise de Dados ", "Linguagem R "),
("Marketing Digital", "Cursos de marketing online");

CREATE TABLE tb_cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    duracao_horas INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_cursos (nome_curso, descricao, preco, duracao_horas, categoria_id) VALUES
("Java para Iniciantes", "Aprenda a programar em Java do zero.", 799.00, 80, 1),
("UX/UI Design para Aplicativos", "Crie interfaces de usuário incríveis para aplicativos móveis.", 699.00, 90, 2),
("Espanhol para Viagens", "Aprenda o básico do espanhol para se comunicar em viagens.", 399.00, 40, 4),
("Design Gráfico com Photoshop", "Domine o Photoshop para criar designs incríveis.", 499.00, 60, 2),
("Marketing Digital do Zero", "Aprenda as principais estratégias de marketing digital.", 599.00, 70, 3),
("Inglês Fluente em 6 Meses", "Curso intensivo de inglês para alcançar a fluência.", 899.00, 120, 4),
("Analise de Dados", "Aprenda a fazer analises a partir de dados ", 299.00, 30, 5),
("Desenvolvimento Web Completo", "Curso completo de desenvolvimento web com HTML, CSS e JavaScript.", 999.00, 150, 1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id_categoria;

SELECT tb_cursos.*, tb_categorias.nome_categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Programação";