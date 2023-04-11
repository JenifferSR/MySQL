CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar (255) not null,
setor varchar (255) not null,
primary key (id)
);

INSERT INTO tb_categorias(descricao, setor)
VALUES ("Hidratante para pele", "Perfumaria");

INSERT INTO tb_categorias(descricao, setor)
VALUES ("Protetor solar", "Perfumaria");

INSERT INTO tb_categorias(descricao, setor)
VALUES ("Remedio para febre", "Farmacia");

INSERT INTO tb_categorias(descricao, setor)
VALUES ("Remedio para gripe", "Farmacia");

INSERT INTO tb_categorias(descricao, setor)
VALUES ("Creme de pentear", "Perfumaria");


SELECT * FROM tb_categorias;

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (6,2) not null,
quantidadedoproduto varchar (255) not null, 
pagamento varchar (255) not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("SALON LINE",25.00, "300ML", "Debito", 5 );

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("DIPIRONA", 15.00, "12UN", "Dinheiro", 3 );

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("BENEGRIPE", 10.00, "12UN", "Credito", 4 );

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("NIVIA", 125.00, "500ML", "Dinheiro", 1 );

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("SUNDOWN", 70.00, "300ML", "Debito", 2 );

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("TYLENOL", 6.00, "2UN", "Debito", 3 );

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("LOLA", 150.00, "700ml", "Dinheiro", 5 );

INSERT INTO tb_produto (nome, preco, quantidadedoproduto, pagamento, categoria_id)
VALUES ("PARACETAMOL", 51.90, "10ML", "Credito", 3 );

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categorias
ON tb_produto.categoria_id = tb_categorias.id;

SELECT * FROM tb_produto INNER JOIN tb_categorias
ON tb_produto.categoria_id = tb_categorias.id
WHERE tb_categorias.setor = "Perfumaria"

