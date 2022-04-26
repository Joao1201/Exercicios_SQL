CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ativa BOOLEAN,
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome, ativa)
VALUES ("Medicamentos controlados", true);

INSERT INTO tb_categorias (nome, ativa)
VALUES ("Medicamentos", true);

INSERT INTO tb_categorias (nome, ativa)
VALUES ("Higiene", true);

INSERT INTO tb_categorias (nome, ativa)
VALUES ("Beleza", true);

INSERT INTO tb_categorias (nome, ativa)
VALUES ("Suplemento", true);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(500),
quantidade INT,
preco DECIMAL (8,2), -- 000000.00
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);