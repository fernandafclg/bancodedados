
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe INT PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
    ('Guerreiro', 'Especialista em combate corpo a corpo.'),
    ('Ranger', 'Super força , velocidade e sede de justiça .'),
    ('Mago', 'Especialista em magia e ataques à distância.'),
    ('Arqueiro', 'Especialista em ataques à distância com arco e flecha.'),
    ('Xamã', 'Especialista em cura e suporte.');

CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
    ('Pantor', 2500, 1800, 10, 1),
    ('Gaela', 3000, 1500, 12, 2),
    ('Kalpon', 2200, 1200, 9, 3),
    ('Salsquira', 1800, 1000, 7, 4),
    ('Ywin', 2800, 2000, 11, 5),
    ('Conan', 2300, 1900, 10, 1),
    ('Taeris', 3200, 1600, 13, 2),
    ('Cerberon', 2100, 1300, 8, 3);
    
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id_classe;

SELECT tb_personagens.*, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id_classe
WHERE tb_classes.nome_classe = "Guerreiro";
