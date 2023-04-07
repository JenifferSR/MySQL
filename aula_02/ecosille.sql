create database db_ecosille;
use db_ecosille;

create table tb_sille(
id bigint auto_increment,
nomedoproduto varchar(255),
tamanho varchar(255),
preco decimal not null,
quantidade decimal not null,
formatodepagamento varchar(255),
primary key (id)
);

select * from tb_sille;

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("BLUSA", "M", 115, 3, "DEBITO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("BAG SILLE", "UN", 680, 04, "DINHEIRO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("CHAVEIRO", "UN", 30, 05, "CREDITO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("BLUSA - VINHO", "P", 315, 02, "DINHEIRO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("BAG SILLE", "UN", 80, 15, "DEBITO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("BLUSA - VERDE", "P", 115, 04, "CREDITO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("CHAVEIRO", "UN", 30, 06, "CREDITO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("BLUSA - AZUL", "G", 515, 10, "DEBITO");

insert into tb_sille(nomedoproduto, tamanho, preco, quantidade, formatodepagamento)
values ("BLUSA - BRANCA TATTOO COLEÇÃO ", "M", 700, 10, "DEBITO");

ALTER TABLE tb_sille MODIFY preco decimal(6,2);

SELECT * FROM tb_sille WHERE preco > 500;

SELECT * FROM tb_sille WHERE preco < 500;

DELETE FROM tb_sille WHERE id = 1;

ALTER TABLE tb_sille CHANGE formatodepagamento pagamento varchar(255);

UPDATE tb_sille SET quantidade = 60 WHERE id = 5;