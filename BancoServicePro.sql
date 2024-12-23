CREATE DATABASE assistencia_tecnica;
USE assistencia_tecnica;

CREATE TABLE usuario(
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45) NOT NULL,
telefone VARCHAR (45),
login VARCHAR (15) NOT NULL,
senha VARCHAR (45) NOT NULL,
perfil VARCHAR (20) NOT NULL
);

CREATE TABLE cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR (45) NOT NULL,
endereco_cliente VARCHAR (45) NOT NULL,
telefone_cliente VARCHAR (45) NOT NULL,
email_cliente VARCHAR (50) UNIQUE
);

CREATE TABLE manutencao (
id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
data_servico TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
equipamento VARCHAR (150) NOT NULL,
tipo VARCHAR (45) NOT NULL,
defeito VARCHAR (150) NOT NULL,
servico VARCHAR (150) NOT NULL,
tecnico VARCHAR (45),
valor DECIMAL (10,2),
situacao VARCHAR (20) NOT NULL,

id_cliente INT NOT NULL,
FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente)
);

DROP TABLE manutencao;


-- INSERTS 

INSERT INTO usuario(id_usuario,nome,login,senha,perfil)
VALUES(1,'ADMINISTRADOR', 'admin', MD5('admin'),'ADM');

SELECT * FROM cliente ORDER BY nome_cliente;


-- SERVICOS

SELECT 
m.id_manutencao AS manutenção,
date_format(m.data_servico,'%d/%m/%Y') AS data,
m.equipamento,
m.servico AS serviço,
m.situacao AS status,
m.valor,
c.nome_cliente AS cliente,
c.telefone_cliente AS telefone

FROM manutencao m 
INNER JOIN cliente c ON m.id_cliente = c.id_cliente
ORDER BY situacao;

-- RELATORIO DA MANUTENCAO

SELECT 
m.id_manutencao AS manutencao,
date_format(m.data_servico,'%d/%m/%Y - %H:%i') AS data,
m.tipo AS tipo_manutenção,
m.equipamento,
m.defeito,
m.servico AS serviço,
m.valor,
c.nome_cliente AS cliente,
c.telefone_cliente as telefone

FROM manutencao m
INNER JOIN cliente c ON m.id_cliente = c.id_cliente
WHERE id_manutencao = 1;


