using Hotelaria.Data;
using Hotelaria.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Hotelaria.Services;

public class HospedeService
{
    public readonly HotelariaDbContext _context;

    public HospedeService(HotelariaDbContext context)
    {
        _context = context;
    }

    public async Task Insert(Hospede hospede)
    {
        _context.Hospedes.Add(hospede);
        await _context.SaveChangesAsync();
    }

    public async Task<IEnumerable<Hospede>> FindAllAsync()
    {
        return await _context.Hospedes.ToListAsync();
    }
    
    public async Task Remove(int idHospede)
    {
        var hospede = _context.Hospedes.AsNoTracking().FirstOrDefault(x => x.IdHospede == idHospede);

        if (hospede == null)
            throw new Exception("Hospede não encontrado!");

        _context.Hospedes.Remove(hospede);
        await _context.SaveChangesAsync();
    }

    public async Task UpdateAsync(Hospede hospedeEdit)
    {
        var hospede = Find(hospedeEdit.IdHospede);

        if (hospede == null)
            throw new Exception("Hospede a ser alterado não existe.");

        _context.Update(hospedeEdit);
        await _context.SaveChangesAsync();
    }

    public Hospede? Find(int idHospede)
    {
        return _context.Hospedes.AsNoTracking().FirstOrDefault(x => x.IdHospede == idHospede);
    }
}
