create database db_estoque;

use db_estoque;
create table tb_produtos(
id bigint auto_increment,
produto varchar(255) not null,
categoria varchar(255),
valor_compra float not null,
valor_venda float not null,
estoque int not null,
primary key(id)
);

insert into tb_produtos (produto, categoria, valor_compra, valor_venda, estoque) values ("Fone de Ouvido", "Acessórios", 10.00, 20.00, 35);

select * from tb_produtos;
select * from tb_produtos where valor_venda > 500;
select * from tb_produtos where valor_venda < 500;

update tb_produtos set categoria = "Acessórios" where id = 3;
update tb_produtos set valor_compra = 1000 where id = 2;