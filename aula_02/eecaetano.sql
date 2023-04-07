create database db_eecaetano;
use db_eecaetano;

create table tb_turmas(
matricula bigint auto_increment,
nomedoaluno varchar(255),
sala varchar(255),
numerodachamada decimal,
nota decimal(2,1) not null,
periodo varchar(255),
primary key (matricula)
);

select * from tb_turmas;

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Jose luiz", 03, 35, 8.9, "Manhã");

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Analua Souza", 09, 01, 9.5, "Tarde");

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Alana", 01, 17, 4.9, "Noite");

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Mariana", 03, 63, 8.0, "Manhã");

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Ronaldo Silva", 14, 26, 9.3, "Noite");

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Jose Roberto", 08, 37, 5.2, "Tarde");

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Talita Miranda", 15, 28, 4.5, "Noite");

insert into tb_turmas(nomedoaluno, sala, numerodachamada, nota, periodo)
values ("Josefa Ribeiro", 25, 46, 4.0, "Manhã");


SELECT * FROM tb_turmas WHERE nota > 7.0;

SELECT * FROM tb_turmas WHERE nota < 7.0;

UPDATE tb_turmas SET nomedoaluno = "Alana Ribeiro" WHERE matricula = 3;

SELECT * FROM tb_turmas WHERE matricula = 3;
