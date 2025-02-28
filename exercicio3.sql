CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
(" Carne Bovina", "Carnes de gado"),
("Carne Suína", "Carnes de porco"),
("Aves", "Carnes de aves"),
("Carne branca", "Peixes"),
("Outros", "Outros tipos de carne");


CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    estoque INT NOT NULL,
    unidade_medida VARCHAR(20),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, estoque, unidade_medida, categoria_id) VALUES
("Picanha", 89.90, 10, "kg", 1),
("Linguiça Toscana", 25.50, 20, "kg", 2),
("Filé de Frango", 18.75, 50, "kg", 3),
("Tilápia", 45.00, 5, "kg", 4),
("Costela Bovina", 45.00, 15, "kg", 1),
("Bacon", 30.00, 30, "kg", 2),
("Asa de Frango", 15.00, 40, "kg", 3),
("Bacalhau", 95.00, 8, "kg", 4);

 SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria;


SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Aves';