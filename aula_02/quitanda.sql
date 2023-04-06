CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES ("maça", 20, 8.80);
INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES ("banana", 50, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES ("uva", 200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES ("perâ", 500, 2.99);

-- busca especifica

SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2;

SELECT * FROM tb_produtos WHERE nome = "uva";

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

-- DESABILITAR NOSSA SEGURANÇA DO SQL 1 = HABILITADO 0 = DESABILITADO
SET SQL_SAFE_UPDATES = 1;

-- update atualiza set mostra onde vc vai mudar
UPDATE tb_produtos SET preco = 200 WHERE id = 2;

-- DELETA ITEM
DELETE FROM tb_produtos WHERE id = 7;

-- ATUALIZAR COLUNA
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);


-- delete coisas expecificas = dados
-- drop coisas maiores = estrutura

-- add de coluna
ALTER TABLE tb_produtos ADD descricao varchar(255);
-- deletar coluna = estrutura
ALTER TABLE tb_produtos DROP descricao;
-- mudar nome da coluna
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);
