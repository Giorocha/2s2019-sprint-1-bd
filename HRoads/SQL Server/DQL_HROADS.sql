USE SENAI_HROADS_TARDE

SELECT * FROM TiposHabilidades
SELECT * FROM Habilidades
SELECT * FROM Classes
SELECT * FROM ClasseHabilidade
SELECT * FROM Personagem 

-- 13
SELECT H.Nome, TH.Nome
FROM Habilidades as H 
JOIN TiposHabilidades as TH 
ON H.IdTipoHabilidade = TH.IdTipoHabilidade

-- 14
SELECT P.Nome, C.Nome
FROM Personagem as P
JOIN Classes as C
ON P.IdClasse = C.IdClasse

-- 15
SELECT P.Nome, C.*
FROM Personagem as P
RIGHT JOIN Classes as C
ON P.IdClasse = C.IdClasse

-- 16
SELECT CH.*, C.Nome, H.Nome
FROM ClasseHabilidade as CH
JOIN Classes as C
ON CH.IdClasse = C.IdClasse
Join Habilidades as H
ON CH.IdHabilidade = H.IdHabilidade

-- 17
SELECT H.Nome, C.Nome
FROM Habilidades as H
JOIN Classes as C
ON H.IdHabilidade = C.IdClasse

-- 18
SELECT H.*, C.*
FROM Habilidades as H
RIGHT JOIN Classes as C
ON H.IdHabilidade = C.IdClasse