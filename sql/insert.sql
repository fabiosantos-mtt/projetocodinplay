INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Instituto Federal do Espirito Santo', 'IFES', 'ES', '2732458769', 'www.ifes.edu.br');
INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Universidade Federal do Espirito Santo', 'UFES', 'ES', '2732458607', 'www.ufes.edu.br');
INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Universidade Federal de Minas Gerais', 'UFMG', 'MG', '2732458678', 'www.ufmg.edu.br');
INSERT INTO instituicao (nome, abreviacao, estado, telefone, site) VALUES ('Faesa', 'FAESA', 'ES', '2732458690', 'www.faesa.com.br');  

INSERT INTO nivel (nome, pontuacaototal, descricaotema) VALUES ('N�vel 1', 90, 'Programa��o B�sica');
INSERT INTO nivel (nome, pontuacaototal, descricaotema) VALUES ('N�vel 2', 180, 'Programa��o Intermedi�ria');
INSERT INTO nivel (nome, pontuacaototal, descricaotema) VALUES ('N�vel 3', 250, 'Programa��o Avan�ada');

INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Newbie', 30, 0, 'Nesta Etapa voc� vai encontra atividades que abordam conceitos gerais sobre a programa��o', 1);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Amador', 60, 30, 'Nesta Etapa voc� vai encontra atividades sobre operadores l�gicos', 1);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Lenda', 90, 60, 'Nesta etapa voc� colocar� seu conhecimento em prova com exerc�cios das tarefas anteriores ! ', 1);

INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Newbie', 120, 90, 'Nesta Etapa voc� vai encontrar desafios envolvendo testes de mesa', 2);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Amador', 150, 120, 'Agora � hora de solucionar algumas quest�es de l�gica !', 2);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Lenda', 180, 150, 'Esta preparado para resolver quest�es mais dificies sobre teste de mesa e l�gica ?', 2);

INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Newbie', 200, 180, 'Nesta etapa voc� encontrara quest�es sobre estruturas de condicionais', 3);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Amador', 220, 200, 'Nesta etapa voc� encontrara quest�es sobre estruturas de repeti��o', 3);
INSERT INTO tarefa (nome, pontuacao_max, pontuacao_min, descricao, id_nivel) VALUES ('Lenda', 260, 240, 'Nesta etapa � hora de provar que � a Lenda do CodinPlay! ', 3);

INSERT INTO patente (nome,pontuacao_min , pontuacao_max) VALUES ('J�nior', 0, 80);
INSERT INTO patente (nome,pontuacao_min, pontuacao_max) VALUES ('Pleno', 80, 130);
INSERT INTO patente (nome,pontuacao_min, pontuacao_max) VALUES ('Senior',130,200);

INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Voc� conhece as Vari�veis?','Qual das seguintes vari�veis s� aceita n�meros inteiros?',15,'Single','String','Integer','Double','Long',3,1,1,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Voc� conhece essa propriedade?','Qual das seguintes vari�veis s� aceita valores verdadeiro ou falso?',15,'Boolean','String','Integer','Double','Long',1,1,1,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Voc� conhece o tamanho desse tipo?','Qual � o tamanho de um inteiro?',15,'1','5','4','6','12',1,1,1,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Manja das Vari�veis?','Qual nome de vari�vel abaixo n�o � valido ?',20,'Tempo','nota_fiscal','vetTeste','char','OlA MuNdO',4,1,2,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Ent�o voc� conhece as constantes ...','Indique qual n�mero abaixo � uma constante inteira v�lida ?',20,'100','3.0','-234','0L','2 345 24',4,1,2,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Ent�o voc� conhece as constantes 2','Indique qual n�mero abaixo � uma constante inteira errada ?',20,'0L','0L','-234','0L','0L',3,1,2,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Hora do teste','Qual a sa�da esperada para o codigo abaixo ? <br /> a = 10 <br /> b = 7 <br /> c = a <br /> a = a + b + c <br /> print(a)" ',30,'27','30','5','7','10',1,1,3,1);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Hora do teste','Qual a sa�da esperada para o codigo abaixo ? <br /> a = 20 <br /> b = 5 <br /> c = a - (a + b) <br /> print(c)" ',20,'20','30','5','7','10',1,1,4,2);
INSERT INTO atividade (nome, descricaoproblema, apontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Hora do teste','Qual a sa�da esperada para o codigo abaixo ? <br /> a = 10 <br /> b = 5 <br /> c = a - (a + b) <br /> print(c)" ',20,'20','30','15','7','10',1,1,4,2);
INSERT INTO atividade (nome, descricaoproblema, pontuacao, respostaa, respostab, respostac, respostad, respostae, respostacerta, tipo, id_tarefa, id_nivel ) VALUES ('Hora do teste','Qual a sa�da esperada para o codigo abaixo ? <br /> a = 5 <br /> b = 10 <br /> c = a <br /> c = b <br /> print(c)" ',5,'10','15','5','30','25',1,2,1,1);

INSERT INTO usuario (nome, email, telefone, tipo, sexo, senha, id_patente, pontuacao, id_instituicao, id_nivel, datanascimento) VALUES ('Paulo', 'paulo@kdeanota','99990909' ,0, 2, '123', 1, 0, 1, 1, '24/04/1990');