/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/
/*Inicializando a criação de dados*/
/*comando de criação de banco de dados*/

CREATE DATABASE db_escola_generation;

/*selecionando o banco de dados a ser usado com USE*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes(
/*chave primária - id - primeira coluna da tabela*/
/*auto_increment- garante que o id não vá se repetir em hipotese nenhuma*/

/**/
	id bigint auto_increment primary key,
    nome varchar(255),
    data_nascimento date,/*aceita data do tipo ano mes e dia*/
    turma int,
    nota decimal(4, 2)/*tipo de dado utilizado para numeros quebrados - real- o segundo numero de pois da virgula so aceita 2 numeros - 4 numero total,antes e depois da virgula, 2- numeros que vamos aceitar depois da virgula = 10,00*/
);

/*LINGUAGEM DE MANIPULAÇÃO DE DADOS*/
SELECT * FROM tb_alunes;/*consulta de tabela - Traz TODOS os dados criados na tabela*/

/*Inserção de dados dentro da tabela*/
/*O id não é preciso passar pq ele é gerado pelo sql*/

/*INSERIR DADOS NA TABELA - 8 REGISTROS*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VAlUES("Isabella Brandão", "1999-10-31", 57, 10.00);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VAlUES("Rurie", "1997-02-05", 57, 9.9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VAlUES("Kauan", "2000-03-07", 57, 6.75);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VAlUES("Renata", "1972-06-17", 57, 9.88);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VAlUES("Joao", "2001-03-19", 57, 4.5);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VAlUES("Victor", "1996-02-09", 57, 8.73);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica", "1997-09-17", 57, 5);

/*SELECT -WHERE traz dados especificos da taberla - a partir do filtro WHERE - no caso ele nicha notas maior que 7*/

/*Selecionando todos os dados da tabela de alunos ONDE  a nota seja maior igual a 10*/
SELECT * FROM tb_alunes WHERE nota >= 10.00;

/*Selecionando todos os dados da tabela de alunos ONDE a nota seja menor igual a 7*/
SELECT * FROM tb_alunes WHERE nota < 7;

/*Fazendo atualização no registro*/
UPDATE tb_alunes SET nota = 7 WHERE id=3; /*Pede pro sql atualizar a tabela alunos - no campo de notoas atualizar a nota pra 7, só o id 3 */

