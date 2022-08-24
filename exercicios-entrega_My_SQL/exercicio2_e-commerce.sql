/*Inicializando a criação de dados*/
CREATE DATABASE db_info;

/*Selecionando banco de dados a ser utilizado*/

USE db_info;

/*Criando dados para tabela*/
CREATE TABLE tb_produtos (
/*Criando atributos*/
	id bigint auto_increment primary key,
    nome varchar(255),
	data_vencimento	date,
    valor decimal(8,2),
    setor varchar(255)
    
);
/*Linguagem de Manipulação de Dados*/

/*INSERSÃO DE DADOS DENTRO DA TABELA*/

SELECT * FROM tb_produtos;


INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Ketchup","2022-09-30",3.99 ,"alimentar");
INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Cacho de Banana","2022-09-3",4.70 ,"alimentar");
INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Maquina de Lavar","2220-09-4",5000.99 ,"Eletrodomésticos");
INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Bolsa","2025-09-30",3.99 ,"vestuário");
INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Molho de tomate","2022-10-30",3.00 ,"alimentar");
INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Fava de mel","2050-09-30",5 ,"alimentar");
INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Brócolis","2026-09-30",5.99 ,"alimentar");
INSERT INTO tb_produtos(nome,data_vencimento,valor,setor)VALUES("Tv","2450-09-30",3000.99 ,"Eletrodoméstico");

/*Faça um SELECT que retorne todes os produtos com o valor maior do que 500.*/
SELECT * FROM tb_produtos WHERE valor >= 500;

/*Faça um SELECT que retorne todes os produtos com o valor menor do que 500.*/
SELECT * FROM tb_produtos WHERE valor <=500;

/*Atualizando registro ---  atualize um registro desta tabela através de uma query de atualização.*/

UPDATE tb_produtos set valor = 500 Where id = 3;
