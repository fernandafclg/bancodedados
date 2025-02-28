CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255));
    
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Remédios para diversas finalidades.'),
('Cosmésticos', 'Produtos para cuidados da pele.'),
('Cosméticos', 'Produtos para beleza e estética.'),
('Suplementos', 'Vitaminas e complementos alimentares.'),
('Higiene Pessoal', "Produtos para cuidados pessoais");
    

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id INT,
     PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome_produto, descricao, preco,quantidade) VALUES
('Ibuprofeno 600mg', 'Antiinflamatório.', 9.99, 1),
('Protetor solar salve', 'Toque seco.', 60.50, 2),
('Shampoo Trsseme ', 'Shampoo para cabelos secos.', 15.90, 3),
('Vitamina C 1000mg', 'Suplemento vitamínico.', 22.00, 4),
('Dorflex', 'Analgésico.', 35.50, 5),
('Dipirona 500mg', 'Analgésico e antitérmico.', 4.50, 1),
('Blush Mari Maria', 'Altamente pigmentado .', 30.99, 2),
('Base Mari Maria ', 'Batom com alta hidratação.', 50.00, 1);

  SELECT * FROM tb_categorias;
    SELECT * FROM tb_produtos;
    
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%c%';

SELECT *FROM tb_produtos
 INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Cosméticos'; 