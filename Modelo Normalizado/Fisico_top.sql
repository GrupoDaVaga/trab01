/* Logico_top: */

CREATE TABLE ESTACIONAMENTO (
    id SERIAL PRIMARY KEY,
    FK_ENDERECO_id SERIAL,
    nome VARCHAR,
    primira_hora MONEY,
    val_hora MONEY
);

CREATE TABLE VAGA (
    id SERIAL PRIMARY KEY,
    FK_ESTACIONAMENTO_id SERIAL,
    sessao VARCHAR,
    numero INTEGER,
    andar INTEGER
);

CREATE TABLE CLIENTE (
    id SERIAL PRIMARY KEY,
    nome VARCHAR,
    email VARCHAR,
    cpf VARCHAR,
    cnh VARCHAR,
    telefone VARCAHR,
    saldo MONEY,
    UNIQUE (email, cpf, cnh, telefone)
);

CREATE TABLE SENSOR (
    id SERIAL PRIMARY KEY,
    FK_VAGAS_id SERIAL,
    FK_TIPO_SENSOR_id SERIAL,
    nome VARCHAR UNIQUE,
    descricao TEXT
);

CREATE TABLE TIPO_SENSOR (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR UNIQUE
);

CREATE TABLE STATUS_RESERVA (
    id SERIAL PRIMARY KEY,
    status VARCHAR UNIQUE
);

CREATE TABLE CARTAO (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    numero VARCHAR,
    validade DATE,
    nome_impresso VARCHAR
);

CREATE TABLE VEICULO (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    FK_CATEGORIA_VEICULO_id SERIAL,
    placa VARCHAR
);

CREATE TABLE CATEGORIA_VEICULO (
    id SERIAL PRIMARY KEY,
    categoria VARCHAR UNIQUE,
    descricao TEXT
);

CREATE TABLE METODO_PAGAMENTO (
    id SERIAL PRIMARY KEY,
    metodo VARCHAR UNIQUE
);

CREATE TABLE RESERVA (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    FK_VAGAS_id SERIAL,
    FK_STATUS_RESERVA_id SERIAL,
    data DATE,
    hora_entrada TIME,
    hora_saida TIME
);

CREATE TABLE PAGAMENTO (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    FK_ESTACIONAMENTO_id SERIAL,
    FK_METODO_PAGAMENTO_id SERIAL,
    valor MONEY,
    data DATE,
    hora TIME
);

CREATE TABLE ENDERECO (
    id SERIAL PRIMARY KEY,
    pais VARCHAR,
    estado VARCHAR,
    cidade VARCHAR,
    bairro VARCHAR,
    rua varchar,
    numero INTEGER,
    cep VARCHAR
);
 
ALTER TABLE ESTACIONAMENTO ADD CONSTRAINT FK_ESTACIONAMENTO_1
    FOREIGN KEY (FK_ENDERECO_id)
    REFERENCES ENDERECO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_1
    FOREIGN KEY (FK_ESTACIONAMENTO_id)
    REFERENCES ESTACIONAMENTO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_1
    FOREIGN KEY (FK_VAGAS_id)
    REFERENCES VAGA (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_2
    FOREIGN KEY (FK_TIPO_SENSOR_id)
    REFERENCES TIPO_SENSOR (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CARTAO ADD CONSTRAINT FK_CARTAO_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_2
    FOREIGN KEY (FK_CATEGORIA_VEICULO_id)
    REFERENCES CATEGORIA_VEICULO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_2
    FOREIGN KEY (FK_VAGAS_id)
    REFERENCES VAGA (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_3
    FOREIGN KEY (FK_STATUS_RESERVA_id)
    REFERENCES STATUS_RESERVA (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_2
    FOREIGN KEY (FK_ESTACIONAMENTO_id)
    REFERENCES ESTACIONAMENTO (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_3
    FOREIGN KEY (FK_METODO_PAGAMENTO_id)
    REFERENCES METODO_PAGAMENTO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;