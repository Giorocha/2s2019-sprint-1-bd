use T_OpFlix

select * from Usuarios
select * from TipoUsuarios

select * from Lancamentos 
select * from Categorias
select * from Classificacoes
select * from Identificacoes


select U.Nome, TU.*
from Usuarios as U
join TipoUsuarios as TU
on U.IdTipoUsuario = TU.IdTipoUsuario

select L.Titulo, C.*
from Lancamentos as L
join Categorias as C
on C.IdCategoria = L.IdCategoria

select L.Titulo, Classificacoes.*
from Lancamentos as L
join Classificacoes
on Classificacoes.IdClassificacao = L.IdClassificacao

select L.Titulo, Identificacoes.*
from Lancamentos as L
join Identificacoes
on Identificacoes.IdIdentificacao = L.IdIdentificacao

create Procedure ChamaData
as
select Titulo, DataLancamento from Lancamentos 
go

exec ChamaData




