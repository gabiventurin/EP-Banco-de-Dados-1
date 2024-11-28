using Hotelaria.Data;
using Hotelaria.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Hotelaria.Services;

public class AtividadeService
{
    private readonly HotelariaDbContext _context;
    public AtividadeService(HotelariaDbContext context)
    {
        _context = context;
    }

    public async Task<IEnumerable<Atividade>> FindAllAsync()
    {
        return await _context.Atividades.OrderBy(x => x.Nome).AsNoTracking().ToListAsync();
    }

    public async Task UpdateAsync(Atividade atividadeIdEdited)
    {
        var atividade = Find(atividadeIdEdited.IdAtividade);

        if (atividade == null)
            throw new Exception("Avaliação a ser alterada não existe.");

        if (atividadeIdEdited.IdadeMin > atividadeIdEdited.IdadeMax)
            throw new Exception("Idade máxima deve ser maior que a mínima.");

        _context.Update(atividadeIdEdited);
        await _context.SaveChangesAsync();
    }

    public async Task DeleteAsync(int idAtividade)
    {
        var atividade = _context.Atividades.AsNoTracking().FirstOrDefault(x => x.IdAtividade == idAtividade);

        if (atividade == null)
            throw new Exception("Atividade não encontrada!");

        _context.Atividades.Remove(atividade);
        await _context.SaveChangesAsync();
    }

    public async Task InsertAsync(Atividade atividade)
    {
        if (atividade.IdadeMin > atividade.IdadeMax)
            throw new Exception("Idade máxima deve ser maior que a mínima.");

        await _context.Atividades.AddAsync(atividade);
        await _context.SaveChangesAsync();
    }

    public Atividade? Find(int IdAtividade)
    {
        return _context.Atividades.AsNoTracking().FirstOrDefault(x => x.IdAtividade == IdAtividade);
    }

    public IEnumerable<Atividade> FindByHospede(int idHospede)
    {
        var avaliacoesHospede = _context.Avalia.AsNoTracking()
            .Where(x => x.IdHospede == idHospede)
            .Select(x => x.IdAtividade)
            .ToList();


        var atvdsFaltantes = _context.Atividades.AsNoTracking()
            .Where(x => !avaliacoesHospede.Contains(x.IdAtividade))
            .ToList();

        return atvdsFaltantes;
    }
}
