create database db_generation_rh;

use db_generation_rh;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario float not null,
turno varchar(255) not null,
escala varchar(255) not null,
primary key(id)
);

insert into tb_funcionarios (nome, cargo, salario, turno, escala) values ("Maria", "Supervisora", 4000.50, "Tarde", "5x2");
insert into tb_funcionarios (nome, cargo, salario, turno, escala) values ("João", "Analista Jr", 1500.50, "Tarde", "6x1");
insert into tb_funcionarios (nome, cargo, salario, turno, escala) values ("Izabel", "Gestora", 5500.00, "Tarde", "5x2");
insert into tb_funcionarios (nome, cargo, salario, turno, escala) values ("Pedro", "Analista Pl", 1900.50, "Manhã", "5x2");
insert into tb_funcionarios (nome, cargo, salario, turno, escala) values ("Henrique", "Analista Sr", 3500.00, "Noite", "5x2");

select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set turno = "Integral" where id = 3;