create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
Classe varchar(255) not null,
Clã varchar(255) not null,
primary key (id)
);

insert into tb_classes(Classe, Clã) 
values ("Guerreiro", "Stark");

insert into tb_classes(Classe, Clã) 
values ("Mago", "Targaryen");

insert into tb_classes(Classe, Clã) 
values ("Arqueiro", "Tyrell");

insert into tb_classes(Classe, Clã) 
values ("Assassino", "Lannister");

insert into tb_classes(Classe, Clã)
values ("Bardo", "Arryn");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
Nome varchar(255),
Poder int,
Defesa int,
Habilidade varchar(255),
Classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Daenerys", 5000, 4500, "Dracarys", 2);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Ned", 2500, 1000, "Lâmina Explosiva", 1);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Jaime", 3000, 2000, "Puxada Espiritual", 4);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Olenna", 1000, 1900, "Flecha Paralisante", 3);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Jon", 4000, 4500, "Ataque das Sombras", 1);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Theon", 1500, 1000, "Hadouken", 5);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Samwell", 3000, 3000, "Zenpou Tenshin", 5);

insert into tb_personagens (Nome, Poder, Defesa, Habilidade, Classe_id)
values ("Missandei", 5000, 5000, "Kong Gun", 2);

select * from tb_personagens;

select * from tb_personagens where poder > 2000;
select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes on tb_personagens.Classe_id = tb_classes.id;
select * from tb_personagens inner join tb_classes on tb_personagens.Classe_id = tb_classes.id
where tb_classes.Classe = "Guerreiro";