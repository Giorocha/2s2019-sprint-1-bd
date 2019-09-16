using Senai.OpFlix.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Interfaces
{
    interface ILancamentoRepository
    {
        List<Lancamentos> Listar();
        void Cadastrar(Lancamentos lancamento);
        void Deletar(int id);
        void Atualizar(Lancamentos lancamento);
        Lancamentos BuscarPorId(int id);
        Lancamentos BuscarPorPlataforma(string nome);
        Lancamentos BuscarPorDataLancamento(DateTime data);
    }
}
