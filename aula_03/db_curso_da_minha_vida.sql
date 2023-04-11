CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar (255) not null,
aprovado boolean not null,
primary key (id)
);

INSERT INTO tb_categorias(descricao, aprovado)
VALUES ("Java", true);

INSERT INTO tb_categorias(descricao, aprovado)
VALUES ("Fotografia", true);

INSERT INTO tb_categorias(descricao, aprovado)
VALUES ("Enfermagem", false);

INSERT INTO tb_categorias(descricao, aprovado)
VALUES ("C++", true);

INSERT INTO tb_categorias(descricao, aprovado)
VALUES ("Designer", false);


SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos (
id bigint auto_increment,
nomedoaluno varchar (255) not null,
curso varchar (255) not null,
preco decimal (6,2) not null,
vencimento varchar (255) not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_cursos ;

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("JULIANA","EAD", 250.00, "DIA 15", 5 );

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("KAIQUE","PRESENCIAL", 1500.00, "DIA 20", 2 );

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("RAFAELA","PRESENCIAL", 2000.00, "DIA 10", 4 );

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("FABIO","EAD", 635.00, "DIA 25", 5 );

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("MARIANA","EAD", 964.00, "DIA 05", 3 );

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("LUANA","PRESENCIAL", 756.00, "DIA 20", 2 );

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("TALITA","PRESENCIAL", 320.00, "DIA 30", 5 );

INSERT INTO tb_cursos (nomedoaluno, curso, preco, vencimento, categoria_id)
VALUES ("HENRIQUE","EAD", 789.00, "DIA 01", 1 );

SELECT * FROM tb_cursos  WHERE preco > 500.00;

SELECT * FROM tb_cursos  WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos  WHERE nomedoaluno LIKE "%J%";

SELECT * FROM tb_cursos  INNER JOIN tb_categorias
ON tb_cursos .categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos  INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "JAVA"
