----- Questões referente as perguntas a seguir----


--1) um comando de atualização de dados (Where com operador lógico)----
	UPDATE Estadio
	SET capacidade = 50000
	WHERE cidade = 'São Paulo' AND capacidade < 40000;
---Atualizar a capacidade de um estádio apenas se ele for de uma cidade específica e sua capacidade for menor que um valor----


--2) uma Consulta que envolva pelo menos três tabelas, com uso de Inner Join -----
	SELECT 
    	Partida.id_partida,
    	Times.nome AS time_casa,
    	Estadio.nome AS estadio,
    	Arbitro.nome AS arbitro
	FROM Partida
	INNER JOIN Times ON Partida.id_timecasa = Times.id_time
	INNER JOIN Estadio ON Partida.id_estadio = Estadio.id_estadio
	INNER JOIN Arbitro ON Partida.id_arbitro = Arbitro.id_arbitro;

----Listar informações sobre partidas, incluindo o nome do time da casa, o nome do estádio e o árbitro responsável-----


---3) uma consulta que envolva duas tabelas, com uso Left/Right Join ------
	SELECT 
   		Times.nome AS time,
    		TorcidaOrganizada.nome AS torcida
	FROM Times
	LEFT JOIN TorcidaOrganizada ON Times.id_time = TorcidaOrganizada.cod_time;

---Listar todos os times e suas torcidas organizadas, mesmo que alguns times não tenham torcida cadastrada----

4) uma consulta que envolva pelo menos duas tabelas com uso de função de
agregação com Group by e Having:

SELECT e.nome AS Estadio, COUNT(p.id_partida) AS TotalPartidas
FROM Estadio e JOIN Partida p ON e.id_estadio = p.id_estadio
GROUP BY e.nome
HAVING COUNT(p.id_partida) > 1;
 
----Quais são os estádios que receberam mais de uma partida e o número total de partidas realizadas em cada um deles-----