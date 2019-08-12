USE SENAI_HROADS_TARDE

INSERT INTO TiposHabilidades VALUES ('Ataque')
								    ,('Defesa')
									,('Cura')
							        ,('Magia')

INSERT INTO Habilidades (Nome, IdTipoHabilidade)
VALUES ('Recuperar Vida',3)

INSERT INTO Classes (Nome, Descricao)			
VALUES ('Barbáro', 'Destruidor')
	  ,('Cruzado','Viajante')
	  ,('Caçadora de Demônios','Predadora')
	  ,('Monge','Sábio')
	  ,('Necromante','Sombrio')
	  ,('Feiticeiro','Prodígio')
	  ,('Arcanista','Divino')

UPDATE Classes SET Nome = 'Necromancer' WHERE IdClasse = 5

INSERT INTO ClasseHabilidade (IdClasse,IdHabilidade) VALUES (1,1),(1,2),(2,2),(3,1),(4,3),(4,2),(6,3)

INSERT INTO Personagem (Nome, IdClasse, CapacidadeMaxVida, CapacidadeMaxMana, DataAtualizacao, DataCriacao)
VALUES ('DeuBug', 1, 100, 80, GETDATE(), '2019-01-18')
	   ,('BitBug', 4, 70, 100, GETDATE(), '2016-03-17')	
	   ,('Fer8', 7, 75, 60, GETDATE(), '2018-03-18')

UPDATE Personagem SET Nome = 'Fer7' WHERE IdPersonagem = 3

SELECT * FROM TiposHabilidades
SELECT * FROM Habilidades
SELECT IdHabilidade FROM Habilidades ORDER BY IdHabilidade ASC
SELECT * FROM Classes
SELECT Nome FROM Classes
SELECT * FROM ClasseHabilidade
SELECT * FROM Personagem
