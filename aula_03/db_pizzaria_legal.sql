CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar (255) not null,
bordarecheada boolean,
primary key (id)
);

INSERT INTO tb_categorias(descricao, bordarecheada)
VALUES ("SALGADA", true);

INSERT INTO tb_categorias(descricao, bordarecheada)
VALUES ("DOCE", false);

INSERT INTO tb_categorias(descricao, bordarecheada)
VALUES ("SALGADA/DOCE", false);

INSERT INTO tb_categorias(descricao, bordarecheada)
VALUES ("SALGADA/SALGADA", true);

INSERT INTO tb_categorias(descricao, bordarecheada)
VALUES ("DOCE/DOCE", false);



SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabor varchar (255) not null,
tamanho varchar (255) not null,
valor decimal (6,2) not null,
pagamento varchar (255) not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES ("Chocolate", "Pequena", 25.00, "Debito", 2 );

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES ("Calabresa", "Gande", 50.00, "Credito", 1 );

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES ("Meia Calabresa / Meia Chocolete", "Gande", 75.00, "Dinheiro", 3 );

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES ("Meia Morango com Chocolate / Meia Frango com Catupir", "Média", 30.00, "Debito", 3 );

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES (" Meia Frango com Catupiry / Meia Calebresa ", "Pequena", 25.00, "Dinheiro", 4);

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES ("Marguerita", "Grande", 50.00, "Credito", 1);

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES ("Meia Calebresa / Meia Marguerita", "Grande", 125.00, "Debito", 4);

INSERT INTO tb_pizzas (sabor, tamanho, valor, pagamento, categoria_id)
VALUES ("Meia Morango com Chocolate / Meia Banana com Doce de Leite", "Grande", 150.00 , "Debito", 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "DOCE"


