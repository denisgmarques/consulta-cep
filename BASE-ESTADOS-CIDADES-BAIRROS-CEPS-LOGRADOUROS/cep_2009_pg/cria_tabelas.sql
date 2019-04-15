CREATE TABLE bairro (
id_bairro int NOT NULL,
id_uf char(2) DEFAULT NULL,
id_cidade int DEFAULT NULL,
nome varchar(72) DEFAULT NULL,
PRIMARY KEY (id_bairro)
);

CREATE TABLE cidade (
id_cidade int NOT NULL,
id_uf char(2) DEFAULT NULL,
nome varchar(60) DEFAULT NULL,
cep varchar(9) DEFAULT NULL,
PRIMARY KEY (id_cidade)
);

CREATE TABLE endereco (
id_endereco int,
id_uf char(2) DEFAULT NULL,
id_cidade int DEFAULT NULL,
id_bairro int DEFAULT NULL,
nome varchar(72) DEFAULT NULL,
cep varchar(8) DEFAULT NULL,
PRIMARY KEY (id_endereco)
);
CREATE INDEX endereco_cep_idx ON endereco (cep);

CREATE TABLE estado (
id_uf char(2) NOT NULL,
nome varchar(72) DEFAULT NULL,
faixa_cep1_ini varchar(8) DEFAULT NULL,
faixa_cep1_fim varchar(8) DEFAULT NULL,
faixa_cep2_ini varchar(8) DEFAULT NULL,
faixa_cep2_fim varchar(8) DEFAULT NULL,
PRIMARY KEY (id_uf)
);
