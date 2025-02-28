CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
(" Revestimentos", "Pisos, azulejos e revestimentos."),
("Tintas", "Tintas e acessórios para pintura."),
("Hidráulica", "Materiais para instalações hidráulicas."),
("Elétrica", "Materiais para instalações elétricas."),
("Ferramentas", "Ferramentas manuais e elétricas.");

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    marca VARCHAR(50),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES
("Piso laminado 40x40", 45.00, 200, "Portobello", 3),
("Rejunte  Marrom", 25.00, 100, "Quartzolit", 3),
("Tubo PVC 3/8", 15.00, 100, "Tigre", 1),
("Fio Elétrico 2.5mm", 120.00, 50, "Cobrecom", 2),
("Tupia", 250.00, 20, "Bosch", 4),
("Tinta lavavel laranja", 80.00, 30, "Suvinil", 5),
("Joelho PVC 3/4", 5.00, 150, "Tigre", 1),
("Interruptor Simples", 10.00, 80, "Tramontina", 2);

 SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Hidráulica";