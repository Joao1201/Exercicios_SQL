CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
formacao VARCHAR(255),
carga_horaria INT,
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (formacao, carga_horaria)
VALUES ("Essentials", 2);

INSERT INTO tb_categorias (formacao, carga_horaria)
VALUES ("Básico", 4);

INSERT INTO tb_categorias (formacao, carga_horaria)
VALUES ("Intermediário", 8);

INSERT INTO tb_categorias (formacao, carga_horaria)
VALUES ("Avançado", 20);

INSERT INTO tb_categorias (formacao, carga_horaria)
VALUES ("Master", 50);

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
curso VARCHAR(255),
turno VARCHAR(255),
modalidade VARCHAR(255),
unidade VARCHAR(255),
preco DECIMAL(6,2),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("Lean Six Sigma", "Noturno", "EAD", "Remoto", 800.00, 3);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("Kanban", "Matutino", "EAD", "Remoto", 250.00, 2);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("Gestão da Qualidade", "Vespertino", "Presencial", "São Paulo", 950.00, 4);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("Black Belt", "Integral", "Presencial", "Barueri", 1600.00, 5);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("Yellow Belt", "Matutino", "EAD", "Remoto", 350.00,  2);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("Lean Manufacturing", "Vespertino", "Presencial", "São Paulo", 630.90, 4);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("Kaizen", "Matutino", "EAD", "Remoto", 150.00, 1);

INSERT INTO tb_cursos (curso, turno, modalidade, unidade, preco, categoria_id)
VALUES ("FMEA", "Matutino", "EAD", "Remoto", 200.99, 1);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000;

SELECT * FROM tb_cursos WHERE curso LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.formacao = "Master";