CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
pizzas VARCHAR(255),
tamanho VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO tb_categorias(pizzas, tamanho)
VALUES ("Normais", "Grande");

INSERT INTO tb_categorias(pizzas, tamanho)
VALUES ("Doces", "Broto");

INSERT INTO tb_categorias(pizzas, tamanho)
VALUES ("Especiais", "Família");

INSERT INTO tb_categorias(pizzas, tamanho)
VALUES ("Vegetarianas", "Grande");

INSERT INTO tb_categorias(pizzas, tamanho)
VALUES ("Zero Lactose", "Média");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(6,2) NOT NULL,
promocao VARCHAR(255),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Americana", "Mussarela, presunto, bacon ovos e cebola", 45.00, "Compre duas ganhe 1 refrigerante", 3);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Baiana", "Calabresa moída, pimenta e cebola", 50.00, "Compre duas ganhe 1 refrigerante", 1);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Brigadeiro", "Chocolate ao leite com granulado", 65.00, "Compre duas ganhe 1 broto", 2);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Romeu e Julieta", "Goiabada e mussarela", 80.00, "Compre duas ganhe 1 broto", 2);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Quatro Queijos", "Mussarela, catupiry, provolone e parmesão", 60.00, "Compre duas ganhe 1 refrigerante", 3);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Pepperoni", "Pepperoni e mussarela", 70.00, "Compre duas ganhe 1 refrigerante", 1);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Prestígio", "Chocolate ao leito com coco ralado", 75.00, "Compre duas ganhe 1 broto", 2);

INSERT INTO tb_pizzas(sabor, descricao, preco, promocao, categoria_id)
VALUES ("Simples", "Queijo ralado, tomate, bebola, pimentão e orégano", 55.00, "Compre duas ganhe 1 broto", 4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.pizzas = "Doces";