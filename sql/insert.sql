INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Instituto Federal do Espirito Santo', 'IFES', 'ES', '2732458769', 'www.ifes.edu.br');
INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Universidade Federal do Espirito Santo', 'UFES', 'ES', '2732458607', 'www.ufes.edu.br');
INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Universidade Federal de Minas Gerais', 'UFMG', 'MG', '2732458678', 'www.ufmg.edu.br');
INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Faesa', 'FAESA', 'ES', '2732458690', 'www.faesa.com.br');  

INSERT INTO nivel (nome, pontuacaototal, descricaotema) VALUES ('N�vel 1', 80, 'Programa��o B�sica');
INSERT INTO nivel (nome, pontuacaototal, descricaotema) VALUES ('N�vel 2', 80, 'Programa��o Intermedi�ria');
INSERT INTO nivel (nome, pontuacaototal, descricaotema) VALUES ('N�vel 3', 140, 'Programa��o Avan�ada');

INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Newbie', 30, 0, 'Nesta Etapa voc� vai encontra atividades que abordam conceitos gerais sobre a programa��o', 1);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Amador', 50, 30, 'Nesta Etapa voc� vai encontra atividades sobre operadores l�gicos', 1);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Lenda', 80, 50, 'Nesta etapa voc� colocar� seu conhecimento em prova com exerc�cios das tarefas anteriores ! ', 1);

INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Newbie', 70, 50, 'Nesta Etapa voc� vai encontrar desafios envolvendo testes de mesa', 2);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Amador', 90, 70, 'Agora � hora de solucionar algumas quest�es de l�gica !', 2);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Lenda', 110, 90, 'Esta preparado para resolver quest�es mais dificies sobre teste de mesa e l�gica ?', 2);

INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Newbie', 130, 110, 'Nesta etapa voc� encontrara quest�es sobre estruturas de condicionais', 3);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Amador', 150, 130, 'Nesta etapa voc� encontrara quest�es sobre estruturas de repeti��o', 3);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Lenda', 180, 150, 'Nesta etapa � hora de provar que � a Lenda do CodinPlay! ', 3);

INSERT INTO patente (nome,pontuacao_min , pontuacao_max) VALUES ('J�nior', 0, 80);
INSERT INTO patente (nome,pontuacao_min, pontuacao_max) VALUES ('Pleno', 81, 130);
INSERT INTO patente (nome,pontuacao_min, pontuacao_max) VALUES ('Senior',131,200);

INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Voc� conhece as Vari�veis?','Qual das seguintes vari�veis s� aceita n�meros inteiros?',15,'Single','String','Integer','Double','Long',3,1,1,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Voc� conhece essa propriedade?','Qual das seguintes vari�veis s� aceita valores verdadeiro ou falso?',15,'Boolean','String','Integer','Double','Long',1,1,1,1);


INSERT INTO usuario (nome, email, telefone, tipo, sexo, senha, id_patente, pontuacao, id_instituicao, id_nivel, datanascimento) VALUES ('Paulin', 'paulo@kdeanota','99990909' ,0, 2, '123', 1, 0, 1, 1, '24/04/1990');