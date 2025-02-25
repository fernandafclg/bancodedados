CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50),
    preco DECIMAL(10,2));
    
    
    INSERT INTO produtos (nome,descricao, categoria, preco) VALUES
("Mouse", "Mouse  Slim  branco Dell  ", "Eletrônicos", 300.00, 10),
("Notebook Acer", "Notebook Inspiron 15 com Intel i7", "Eletrônicos", 3000.00, 5),
("Webcam ", "Webcam Logi preta ", "Acessórios", 200.00, 2),
("Monitor Acer", "Monitor slim acer 35 polegdadas ", "Acessórios", 800.00, 5),
("Smartwatch Xiaomi", "Relógio inteligente com monitor cardíaco", "Acessórios", 900.00, 8),
("Monitor LG", "Monitor LED 24 polegadas Full HD", "Periféricos", 850.00, 1),
("Monitor de som ", "Monitor de som Edifier 237", "Acessorios", 1200.00, 7),
("Fone de Ouvido Bluetooth", "Fone de ouvido sem fio com cancelamento de ruído", "Acessórios", 400.00, 25);

SELECT * FROM produtos;


SELECT * FROM produtos WHERE preco > 500.00;
SELECT * FROM produtos WHERE preco < 500.00;

UPDATE produtos SET nome = "Smartwatch Xiaomi" WHERE id = 5;
SELECT * FROM produtos;