using Hotelaria.Data;
using Hotelaria.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Hotelaria.Services;

public class AvaliaService
{
    private readonly HotelariaDbContext _context;

    public AvaliaService(HotelariaDbContext context)
    {
        _context = context;
    }

    public async Task InsertAsync(Avalia avalia)
    {
        if (_context.Hospedes.Find(avalia.IdHospede) == null)
            throw new Exception("Hóspede não encontrado!");

        var atividade = _context.Atividades.Find(avalia.IdAtividade) 
            ?? throw new Exception("Atividade não encontrada!");

        if (avalia.Nota > 10 || avalia.Nota < 0)
            throw new Exception("Nota deve estar entre 10 e 0!");

        if ((await FindByPk(avalia.IdAtividade, avalia.IdHospede)) != null)
            throw new Exception("Já foi feita avaliação para essa atividade!");

        avalia.DataAvaliacao = DateTime.Now;

        await _context.Avalia.AddAsync(avalia);
        await _context.SaveChangesAsync();
    }

    public async Task<Avalia?> FindByPk(int idAtividade, int idHospede)
    {
        return await _context.Avalia
            .AsNoTracking().FirstOrDefaultAsync(a => a.IdAtividade == idAtividade && a.IdHospede == idHospede);
    }

    public async Task DeleteAsync(int idAtividade, int idHospede)
    {
        var avalia = await FindByPk(idAtividade, idHospede);
        if (avalia == null) return;

        _context.Avalia.Remove(avalia);
        await _context.SaveChangesAsync();
    }

    public async Task<IEnumerable<Avalia>> FindAllAsync()
    {
        return await _context.Avalia.AsNoTracking().OrderByDescending(x => x.Nota).ToListAsync();
    }

    public async Task UpdateAsync(Avalia avaliaEdited)
    {
        var avalia = await FindByPk(avaliaEdited.IdAtividade, avaliaEdited.IdHospede);

        if (avalia == null)
            throw new Exception("Avaliação a ser alterada não existe.");

        if (avalia.Nota > 10 || avalia.Nota < 0)
            throw new Exception("Nota deve estar entre 10 e 0!");

        if (avaliaEdited.DataAvaliacao != avalia.DataAvaliacao)
            throw new Exception("Não mude a data de avaliação!");

        _context.Update(avaliaEdited);
        await _context.SaveChangesAsync();
    }

    public async Task<IEnumerable<Avalia>> FindByAtividade(int idAtividade)
    {
        return await _context.Avalia.Where(x => x.IdAtividade == idAtividade).ToListAsync();
    }

    public async Task<IEnumerable<Avalia>> FindByHospede(int idHospede)
    {
        return await _context.Avalia.Where(x => x.IdHospede == idHospede).ToListAsync();
    }

    public async Task<Tuple<string, string>> GetHospedeAndAtividade(int idAtividade, int idHospede)
    {
        var hospede = (await _context.Hospedes.FindAsync(idHospede))?.Cpf ?? string.Empty;
        var atividade = (await _context.Atividades.FindAsync(idAtividade))?.Nome ?? string.Empty;
        return Tuple.Create(atividade, hospede);
    }
}
