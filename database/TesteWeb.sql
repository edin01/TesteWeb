DROP DATABASE IF EXISTS TesteWeb;

CREATE DATABASE TesteWeb;

USE TesteWeb;

CREATE TABLE passageiros(
id_passageiro INT AUTO_INCREMENT,
nm_passageiro VARCHAR(50) NOT NULL,
dt_passageiro DATE NOT NULL,
cpf_passageiro LONG NOT NULL,
sx_passageiro VARCHAR(10) NOT NULL,
KEY (id_passageiro)
);

CREATE TABLE motoristas(
id_motorista INT AUTO_INCREMENT,
nm_motorista VARCHAR(50) NOT NULL,
dt_motorista DATE NOT NULL,
cpf_motorista LONG NOT NULL,
sx_motorista VARCHAR(10) NOT NULL,
stat_motorista VARCHAR(10) NOT NULL,
modelo_carro VARCHAR(20) NOT NULL,
KEY (id_motorista)
);

CREATE TABLE corridas(
nm_motorista VARCHAR(50) NOT NULL,
nm_passageiro VARCHAR(50) NOT NULL,
valor DOUBLE NOT NULL
);

select * from motoristas;
select * from passageiros;
select * from corridas;

truncate table passageiros;
truncate table motoristas;
truncate table corridas;

SELECT stat_motorista FROM motoristas WHERE nm_motorista = 'Airton Menezes'