
CREATE TABLE IF NOT EXISTS Patente (
  id_patente INT NOT NULL,
  nome VARCHAR(45) NULL,
  pontuacao_min VARCHAR(45) NULL,
  pontuacao_max VARCHAR(45) NULL,
  PRIMARY KEY (id_patente))

CREATE TABLE IF NOT EXISTS instituicao(
  id_instituicao INT NOT NULL,
  nome VARCHAR(45) NULL,
  abreviacao VARCHAR(45) NULL,
  estado VARCHAR(45) NULL,
  telefone VARCHAR(45) NULL,
  site VARCHAR(45) NULL,
  PRIMARY KEY (id_instituicao))

  
CREATE TABLE IF NOT EXISTS nivel (
  id_nivel INT NOT NULL,
  nome VARCHAR(45) NULL,
  pontuacaototal VARCHAR(45) NULL,
  descricaotema TEXT NULL,
  PRIMARY KEY (id_nivel))
  
    
CREATE TABLE IF NOT EXISTS tarefa (
  id_tarefa INT NOT NULL,
  nome VARCHAR(45) NULL,
  pontuacao_max VARCHAR(45) NULL,
  descricao TEXT NULL,
  id_nivel INT NOT NULL,
  PRIMARY KEY (id_tarefa, id_nivel),
  FOREIGN KEY (id_nivel)
  REFERENCES nivel (id_nivel))
  
CREATE TABLE IF NOT EXISTS usuario (
  id_usuario INT NOT NULL,
  nome VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  datanascimento DATE NULL,
  telefone VARCHAR(45) NULL,
  tipo INT NULL,
  sexo INT NULL,
  senha VARCHAR(45) NULL,
  id_patente INT NOT NULL,
  pontuacao VARCHAR(45) NULL,
  id_instituicao INT NOT NULL,
  PRIMARY KEY (id_usuario, id_patente, id_instituicao),
  FOREIGN KEY (id_patente)
  REFERENCES Patente (id_patente),
  FOREIGN KEY (id_instituicao)
  REFERENCES instituicao(id_instituicao))

CREATE TABLE IF NOT EXISTS atividade (
  id_atividade INT NOT NULL,
  nome VARCHAR(45) NULL,
  descricaoproblema TEXT NULL,
  pontuacao VARCHAR(45) NULL,
  respostaA VARCHAR(45) NULL,
  respostaB VARCHAR(45) NULL,
  respostaC VARCHAR(45) NULL,
  respostaD VARCHAR(45) NULL,
  respostaE VARCHAR(45) NULL,
  respostaCerta INT NULL,
  id_tarefa INT NOT NULL,
  id_nivel INT NOT NULL,
  PRIMARY KEY (id_atividade, id_tarefa, id_nivel),
  FOREIGN KEY (id_tarefa , id_nivel)
  REFERENCES tarefa(id_tarefa , id_nivel))


CREATE TABLE IF NOT EXISTS usuario_atividade(
  id_usuario INT NOT NULL,
  id_atividade INT NOT NULL,
  id_tarefa INT NOT NULL,
  id_nivel INT NOT NULL,
  data DATE NULL,
  PRIMARY KEY (id_usuario, id_atividade, id_tarefa, id_nivel),
  FOREIGN KEY (id_usuario)
  REFERENCES usuario(id_usuario),  
  FOREIGN KEY (id_atividade , id_tarefa , id_nivel)
  REFERENCES atividade(id_atividade,id_tarefa,id_nivel))