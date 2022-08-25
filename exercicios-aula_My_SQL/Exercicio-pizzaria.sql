CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	
    id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

/*Criando atributos para as colunas da tabela*/
CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
	quantidade int,
    categoria_id bigint,
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

/*Inserindo registros na tabela */
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada", "Brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Brotinho", false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Médio", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Médio", false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Grande", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Salgada","Grande", false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Doce","Brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Doce","Brotinho", false);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Vegetariana","Brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Vegana","Brotinho", false);


/*Criando tipos de pizza - a partir das categorias criadas */

select * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Frango C/ Ctupiry", 30.00,"tradicional",5,1); /*O 1 CRIA UM RELACIONAMENTO ENTRE A TABELA DE PIZZA E CATEGORIA- O 1 PEGA OS ATRIBUTOS INSERIDOS - Salgada","Brotinho" */

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Mussarela",40.59, "tradicional",5 , 2);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Prestigio",60.99, "tradicional",2 , 8);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Lombo com Catupiry",45.99 ,"tradicional",3, 6);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Brocolis C/ Catupiry",30.99, "tradicional",4, 9);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Calabreza C/ Catupiry",35.99, "tradicional",5 , 1);




SELECT * FROM tb_pizzas WHERE preco > 45.00;

/*Traga todos os resultados da tabela de pizzas ONDE o preco for >= 50 e preco<=100*/
    SELECT * FROM tb_pizzas WHERE preco >=50 AND PRECO <=100;
  
  /*Segunda forma de trazer o resultado do valor */  
  SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
  
  
 /*Buscando no banco de dados um registro que contenha uma letras - passa a letra dentro do modulo */  
  SELECT * FROM tb_pizzas WHERE sabor LIKE  "%prestigio%" ;
  
  /*Buscando no banco de dados um registro que que COMECEM COM  a letra c - p*/
    SELECT * FROM tb_pizzas WHERE sabor LIKE  "c%" ;
    
    /*Buscando no banco de dados um registro que que TERMINEM COM  a letra*/
    SELECT * FROM tb_pizzas WHERE sabor LIKE "%M";
    

	/*Select alfabato descrescente*/
	SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY sabor DESC;

	/*Select com valor descrescente */
	SELECT * FROM tb_pizas WHERE preco > 45 ORDER BY preco DESC;
    
    /*INNER JOIN-TRAGA O QUE TEM EM COMUM NAS DUAS TABELAS NO CAMPO DE ID -  INTEGRANDO AS DUAS TABELAS - A PARTIR DO ID CHAVE EXTRANGEIRA(CATEGORIA ID)*/
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_categorias.id = tb_pizzas.categoria_id;
    
    /*JUNTE  AS TABELA TABELAS PELO ID E MOSTRE APENAS AS PIZZAS COM DESCRIÇÃO DOCE */
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_categorias.id = tb_pizzas.categoria_id WHERE descricao = "Doce";