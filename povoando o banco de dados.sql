---- Alunos Pedro Pizoni e Otavio Flamia---
--- povoamento das tabelas ---
---indicado povoar tabela por tabela, para evitar bugs de compilação---

-- Povoando a tabela Times
INSERT INTO Times (id_time, nome, data_fundacao, cores_principais, estado_origem) VALUES
(1, 'Flamengo', '1895-11-17', 'Vermelho e Preto', 'Rio de Janeiro'),
(2, 'Palmeiras', '1914-08-26', 'Verde e Branco', 'São Paulo'),
(3, 'São Paulo', '1930-01-25', 'Branco, Vermelho e Preto', 'São Paulo'),
(4, 'Cruzeiro', '1921-01-02', 'Azul e Branco', 'Minas Gerais'),
(5, 'Grêmio', '1903-09-15', 'Azul, Preto e Branco', 'Rio Grande do Sul'),
(6, 'Corinthians', '1910-09-01', 'Preto e Branco', 'São Paulo');

-- Povoando a tabela TorcidaOrganizada
INSERT INTO TorcidaOrganizada (id_torcida, cod_time, nome) VALUES
(1, 1, 'Urubuzada'),
(2, 2, 'Mancha Verde'),
(3, 3, 'Independente'),
(4, 4, 'Máfia Azul'),
(5, 5, 'Geral do Grêmio'),
(6, 6, 'Gaviões da Fiel');

-- Povoando a tabela Estadio
INSERT INTO Estadio (id_estadio, nome, capacidade, DataInaugural, cidade) VALUES
(1, 'Maracanã', 78838, '1950-06-16', 'Rio de Janeiro'),
(2, 'Allianz Parque', 43713, '2014-11-19', 'São Paulo'),
(3, 'Morumbi', 66000, '1960-10-02', 'São Paulo'),
(4, 'Mineirão', 61727, '1965-09-05', 'Belo Horizonte'),
(5, 'Arena do Grêmio', 55662, '2012-12-08', 'Porto Alegre'),
(6, 'Neo Química Arena', 49205, '2014-05-10', 'São Paulo');

-- Povoando a tabela Arbitro
INSERT INTO Arbitro (id_arbitro, nome, sexo, DataNascimento) VALUES
(1, 'Carlos Eduardo', 'M', '1980-07-15'),
(2, 'Fernanda Silva', 'F', '1985-03-22'),
(3, 'Ricardo Mendes', 'M', '1990-05-10'),
(4, 'Ana Paula Costa', 'F', '1982-09-12'),
(5, 'Júlio César', 'M', '1977-01-30'),
(6, 'Marcelo Oliveira', 'M', '1988-11-08');

-- Povoando a tabela Partida
INSERT INTO Partida (id_partida, id_timecasa, id_arbitro, id_estadio, id_timeVisitante) VALUES
(1, 1, 1, 1, 2), -- Flamengo x Palmeiras no Maracanã
(2, 3, 2, 3, 4), -- São Paulo x Cruzeiro no Morumbi
(3, 5, 3, 5, 6), -- Grêmio x Corinthians na Arena do Grêmio
(4, 2, 4, 2, 1), -- Palmeiras x Flamengo no Allianz Parque
(5, 4, 5, 4, 3), -- Cruzeiro x São Paulo no Mineirão
(6, 6, 6, 6, 5); -- Corinthians x Grêmio na Neo Química Arena

-- Povoando a tabela RelacaoTimePartida
INSERT INTO RelacaoTimePartida (id_time, id_partida) VALUES
(1, 1), (2, 1),
(3, 2), (4, 2),
(5, 3), (6, 3),
(2, 4), (1, 4),
(4, 5), (3, 5),
(6, 6), (5, 6);
