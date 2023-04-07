create database db_rh;
use db_rh;

create table tb_dados(
id bigint auto_increment,
nome varchar(255),
cpf varchar(255),
salario decimal not null,
cargo varchar(255),
telefone varchar(255),
primary key (id)
);

select * from tb_dados;

insert into tb_dados(nome, cpf, salario, cargo, telefone)
values ("Jose Roberto", "856.986.123.76", 5000, "Repositor","11-9533-9648");

insert into tb_dados(nome, cpf, salario, cargo, telefone)
values ("Jeniffer Souza", "164.763.486.17", 3000, "Estoquista", "11-9893-4863");

insert into tb_dados(nome, cpf, salario, cargo, telefone)
values ("Tais Silva", "164.763.486.17", 1000, "Caixa", "11-9986-7682");

insert into tb_dados(nome, cpf, salario, cargo, telefone)
values ("Maria Flor", "846.369.864.76", 1500, "Dona", "11-9533-9648");

insert into tb_dados(nome, cpf, salario, cargo, telefone)
values ("Fabio Gaspas", "836.816.560.85", 7000, "Caixa", "11-7628-3548");

ALTER TABLE tb_dados MODIFY salario decimal(6,2);

SELECT * FROM tb_dados WHERE salario > 2000;

SELECT * FROM tb_dados WHERE salario < 2000;

UPDATE tb_dados SET salario = 6000 WHERE id = 5;
