CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nomecategoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nomecategoria, descricao) VALUES
("Salgada", "Sabores salgados tradicionais."),
("Doce", "Sabores doces, ideais para sobremesa."),
("Especial", "Feita com  ingredientes premium."),
("Vegana", "Feita  com ingredientes organicos e  de origem vegetal."),
("Vegetariana", "Feita parcialmente com vegetais e ovolacteos.");

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT,
    nomepizza VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255),
    preco DECIMAL(5,2) NOT NULL,
    quantidade INT NOT NULL,
    massa VARCHAR (50),
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nomepizza, ingredientes, preco, quantidade, massa, categoria_id) VALUES
('Atum', 'Atum, Mussarela, tomate, orégano',56.00, 1,"fina", 1),
("Calamussa","Calabresa, Mussarela, tomate, orégano",50.00, 2,"fina", 1),
("Brigadeiro", "chocolate, granulado",45.00, 1,"grossa", 2),
("Banana com Canela", "Banana, canela, açúcar",45.00 ,1, "fina", 2),
('Marguerita', 'Mussarela, tomate, manjericão', 55.00,3,'Tradicional', 5),
('A moda da casa ',  'Palmito, champignon, azeitona',50.00, 3,"fina", 5),
('Frango com Catupiry', 'Frango desfiado, catupiry, milho', 48.00,10, 'Tradicional', 1),
("Calabresa acebolada","Calabresa ,cebola, pimentão",50.00,5,"fina", 1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nomepizza LIKE '%M%';

SELECT *FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria;


SELECT tb_pizzas.*, tb_categorias.nomecategoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.nomecategoria = 'Salgada'; 