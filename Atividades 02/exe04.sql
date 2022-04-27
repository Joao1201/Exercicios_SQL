CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
origem VARCHAR(255) NOT NULL,
ativa BOOLEAN NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (origem, ativa)
VALUES ("Bovina", true);

INSERT INTO tb_categorias (origem, ativa)
VALUES ("Suína", true);

INSERT INTO tb_categorias (origem, ativa)
VALUES ("Aves", true);

INSERT INTO tb_categorias (origem, ativa)
VALUES ("Peixes", true);

INSERT INTO tb_categorias (origem, ativa)
VALUES ("Misto", true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
corte VARCHAR(255),
preco DECIMAL(6,2),
categoria VARCHAR(255),
tipo VARCHAR(255),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Lagarto", 36.99, "Primeira", "Carne vermelha", 1);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Picanha", 64.99, "Primeira", "Carne vermelha", 1);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Filé mignon", 82.99, "Especial", "Carne vermelha", 1);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Acém", 39.00, "Segunda", "Carne vermelha", 1);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Salmão", 54.00, "Sem categoria", "Carne branca", 4);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Tilápia", 40.99, "Sem categoria", "Carne branca", 4);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Costela", 35.06, "Sem categoria", "Carne vermelha", 2);

INSERT INTO tb_produtos (corte, preco, categoria, tipo, categoria_id)
VALUES ("Coxa c/ sobrecoxa", 11.49, "Sem categoria", "Carne branca", 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 100;

SELECT * FROM tb_produtos WHERE corte LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.origem = "Aves";