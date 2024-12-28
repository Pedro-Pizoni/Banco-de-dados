CREATE TABLE Times (
    id_time INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_fundacao DATE,
    cores_principais VARCHAR(50),
    estado_origem VARCHAR(50)
);

CREATE TABLE Estadio(
    id_estadio int PRIMARY KEY,
    nome char (50) NOT NULL,
    capacidade int,
    DataInaugural DATE,
    cidade char(100)
);

CREATE TABLE RelacaoTimePartida (
    id_time INT,
    id_partida INT,
    PRIMARY KEY (id_time, id_partida),
    FOREIGN KEY (id_time) REFERENCES Times(id_time),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida)
);


CREATE TABLE PARTIDA (
    id_partida int PRIMARY KEY,
    id_timecasa int,
    id_arbitro int,
    id_estadio int,
    id_timeVisitante int,
    FOREIGN KEY (id_timecasa) REFERENCES Times(id_time),
    FOREIGN KEY (id_arbitro) REFERENCES arbitro(id_arbitro),
    FOREIGN KEY (id_estadio) REFERENCES estadio(id_estadio),
    FOREIGN KEY (id_timeVisitante) REFERENCES Times(id_time)
);

CREATE TABLE ARBITRO(
    id_arbitro int PRIMARY KEY,
    nome char (100) NOT NULL,
    sexo char(1), -- (M) MASCULINO (F) FEMININO (X) TRANSFORMERS
    DataNascimento DATE
);

CREATE TABLE TorcidaOrganizada(
    id_torcida int PRIMARY KEY,
    cod_time int,
    nome char(100),
    FOREIGN KEY (cod_time) REFERENCES Times(id_time)
);
