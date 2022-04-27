CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
departamento VARCHAR(255),
tipo_venda VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (departamento, tipo_venda)
VALUES ("Madeira", "Venda própria");

INSERT INTO tb_categorias (departamento, tipo_venda)
VALUES ("Ferragens", "Venda própria");

INSERT INTO tb_categorias (departamento, tipo_venda)
VALUES ("Iluminação", "Venda parceiro");

INSERT INTO tb_categorias (departamento, tipo_venda)
VALUES ("Ferramentas", "Venda própria");

INSERT INTO tb_categorias (departamento, tipo_venda)
VALUES ("Decoração", "Venda parceiro");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255),
preco DECIMAL(6,2),
estoque INT,
promocao BOOLEAN,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Pallet", 70.50, 50, true, 1);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Pisos", 20.99, 100, false, 1);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Adesivos", 15.90, 250, true, 5);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Persiana", 55.90, 25, false, 5);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Furadeira", 150.00, 10, false, 4);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Martelo", 15.00, 50, false, 4);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Tela de aço", 76.80, 100, true, 2);

INSERT INTO tb_produtos (produto, preco, estoque, promocao, categoria_id)
VALUES ("Lâmpada", 20.00, 75, false, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150;

SELECT * FROM tb_produtos WHERE produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.departamento = "Decoração";