CREATE TABLE bairro (
id_bairro numeric(9) NOT NULL,
id_uf char(2) DEFAULT NULL,
id_cidade numeric(9) DEFAULT NULL,
nome varchar2(72) DEFAULT NULL,
PRIMARY KEY (id_bairro)
);

CREATE TABLE cidade (
id_cidade numeric(9) NOT NULL,
id_uf char(2) DEFAULT NULL,
nome varchar2(60) DEFAULT NULL,
cep varchar2(9) DEFAULT NULL,
PRIMARY KEY (id_cidade)
);

CREATE TABLE endereco (
id_endereco numeric(9),
id_uf char(2) DEFAULT NULL,
id_cidade numeric(9) DEFAULT NULL,
id_bairro numeric(9) DEFAULT NULL,
nome varchar2(72) DEFAULT NULL,
cep varchar2(8) DEFAULT NULL,
PRIMARY KEY (id_endereco)
);
CREATE INDEX endereco_cep_idx ON endereco (cep);

CREATE TABLE estado (
id_uf char(2) NOT NULL,
nome varchar2(72) DEFAULT NULL,
faixa_cep1_ini varchar2(8) DEFAULT NULL,
faixa_cep1_fim varchar2(8) DEFAULT NULL,
faixa_cep2_ini varchar2(8) DEFAULT NULL,
faixa_cep2_fim varchar2(8) DEFAULT NULL,
PRIMARY KEY (id_uf)
);
