CREATE DATABASE db_generation_games_online;

USE db_generation_games_online;


/*determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online*/

/*Criando a tabela  e inserindo atributos */
CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
    posicao_ataque varchar(50),/*se vai ser arqueiro, atirador...*/
    posicao_jogo varchar(50),
    posicao boolean/*se vai ser front ou back*/
	
);
/*aDICIONANDO CAMPO BOOLEAN*/
ALTER TABLE tb_classes ADD posicao boolean;


/*Insira  registros na tabela tb_personagens*/

CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    poder_ataque decimal(9,2),
    poder_defesa decimal(9,2),
    nome varchar(50),
    arma varchar (50),
    classe_id bigint,
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

/*Insira 5 registros na tabela tb_classes.*/

SELECT * FROM tb_classes;

INSERT INTO tb_classes(posicao_ataque,posicao_jogo,posicao)VALUES("Arqueiro","Front",true);
INSERT INTO tb_classes(posicao_ataque,posicao_jogo,posicao)VALUES("Acrobata","Back",false);
INSERT INTO tb_classes(posicao_ataque,posicao_jogo,posicao)VALUES("Ratreador","Front",true);
INSERT INTO tb_classes(posicao_ataque,posicao_jogo,posicao)VALUES("Espadachim","Front",true);
INSERT INTO tb_classes(posicao_ataque,posicao_jogo,posicao)VALUES("Arqueiro","Back",false);


/*Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.*/


SELECT * FROM tb_personagens;

INSERT INTO tb_personagens( poder_ataque, poder_defesa, nome, arma, classe_id)
VALUES(1000.02,2000.03,"Arqueiro Verde","Arco e flecha",2);

INSERT INTO tb_personagens( poder_ataque, poder_defesa, nome, arma, classe_id)
VALUES(2340.12,3230.33,"CATANA","facas",2);

INSERT INTO tb_personagens( poder_ataque, poder_defesa, nome, arma, classe_id)
VALUES(3450.32,1430.53,"Rastro sangíneo","olfato",3);

INSERT INTO tb_personagens( poder_ataque, poder_defesa, nome, arma, classe_id)
VALUES(2300.02,3330.03,"Verme cinzento","espada",4);

INSERT INTO tb_personagens( poder_ataque, poder_defesa, nome, arma, classe_id)
VALUES(1040.42,2330.03,"Arqueiro Negro","Arco e flecha",5);

/*SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000*/

SELECT * FROM tb_personagens WHERE poder_ataque>2000.00 ;

/* SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.*/

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000.00 AND 2000.00;

SELECT * FROM tb_personagens WHERE nome LIKE "c%";

/*SELECT UTILIZANDO INNER JOIN*/

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id WHERE posicao_ataque = "arqueiro";

