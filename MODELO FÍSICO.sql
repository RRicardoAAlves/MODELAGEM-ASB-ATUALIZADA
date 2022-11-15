/* MODELO LÓGICO: */

CREATE TABLE cadastro_escola (
    id INTEGER,
    razao_social VARCHAR,
    nome_representante VARCHAR,
    endereco_rua VARCHAR,
    endereco_numero INTEGER,
    endereco_bairro VARCHAR,
    endereco_complemento VARCHAR,
    telefone_contato VARCHAR,
    cidade VARCHAR,
    estado VARCHAR,
    email VARCHAR,
    id_usuario INTEGER,
    cep VARCHAR,
    cnpj VARCHAR
);

CREATE TABLE usuario (
    id INTEGER,
    senha VARCHAR,
    email VARCHAR,
    razaoSocial VARCHAR
);

CREATE TABLE demanda_escola (
    id INTEGER,
    demanda VARCHAR,
    descricaoDemanda VARCHAR,
    dia INTEGER,
    mes INTEGER,
    ano INTEGER,
    stats VARCHAR,
    id_usuario INTEGER,
    tipo VARCHAR
);

CREATE TABLE cadastro_empresa (
    endereco_numero INTEGER,
    email VARCHAR,
    razao_social VARCHAR,
    endereco_complemento VARCHAR,
    cidade VARCHAR,
    nome_representante VARCHAR,
    endereco_rua VARCHAR,
    id INTEGER,
    endereco_bairro VARCHAR,
    cnpj VARCHAR,
    estado VARCHAR,
    telefone_contato VARCHAR,
    cep VARCHAR,
    id_usuario INTEGER
);

CREATE TABLE monitoramento (
    id INTEGER PRIMARY KEY,
    tipo VARCHAR,
    descricaoMonitoramento VARCHAR,
    dia INTEGER,
    nomeAluno VARCHAR,
    mes INTEGER,
    ano INTEGER
);

CREATE TABLE servico_empresa (
    id INTEGER PRIMARY KEY,
    descricao VARCHAR,
    servicos VARCHAR
);

CREATE TABLE Relacionamento_1 (
);

CREATE TABLE Relacionamento_2 (
);

CREATE TABLE Relacionamento_3 (
);

CREATE TABLE Relacionamento_4 (
    fk_servico_empresa_id INTEGER
);

CREATE TABLE Relacionamento_5 (
    fk_monitoramento_id INTEGER
);
 
ALTER TABLE Relacionamento_4 ADD CONSTRAINT FK_Relacionamento_4_1
    FOREIGN KEY (fk_servico_empresa_id)
    REFERENCES servico_empresa (id)
    ON DELETE SET NULL;
 
ALTER TABLE Relacionamento_5 ADD CONSTRAINT FK_Relacionamento_5_1
    FOREIGN KEY (fk_monitoramento_id)
    REFERENCES monitoramento (id)
    ON DELETE SET NULL;