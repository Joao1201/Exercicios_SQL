create database db_escola;

use db_escola;
create table tb_alunos(
ra bigint auto_increment,
nome varchar(255) not null,
turma int not null,
periodo varchar(255) not null,
professor varchar(255) not null,
media float not null,
primary key(ra)
);

insert into tb_alunos (nome, turma, periodo, professor, media) values ("Amanda", 2, "Manhã", "Rosa", 8.5);

select * from tb_alunos;
select * from tb_alunos where media > 7;
select * from tb_alunos where media < 7;

update tb_alunos set media = 6.5 where ra = 5;